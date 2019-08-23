<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Regispencari extends CI_Controller  {

	function __construct() {
        parent::__construct();
        $this->load->model('PencariM');
        $this->load->model('Verifemail');
    }
    function index() {
        $this->load->view('pencari/register');
    }
    //fungsi daftar akun
    function tambah_data() {
    //mendeklarasikan variabel inputan
      $nama = $this->input->post('nama');
      $username = $this->input->post('username');
      $password = md5($this->input->post('password'));
      $email = $this->input->post('email');
      $tingkatan = $this->input->post('tingkatan');
      $cekEmail=$this->PencariM->cekEmail('pencari', $email);
      //validasi inputan
      $this->load->library('form_validation');
      $this->form_validation->set_rules('nama', 'nama', 'required');
      $this->form_validation->set_rules('username', 'username', 'required');
      $this->form_validation->set_rules('password', 'password', 'required');
      $this->form_validation->set_rules('email', 'email', 'required');
      if($this->form_validation->run() == FALSE ){
        redirect('regispencari');
      //cek agar email tidak duplikat
      }else if($cekEmail   ==  false)  { 
        $data = array(
            'nama'           => $nama,
            'username'       => $username,
            'password'       => $password,
            'email'          => $email,
            'status'         => "belum aktif",
            'tingkatan'      => $tingkatan,
            'create_dtm'     => date('Y-m-d H-s-i')
        );
        $result = $this->PencariM->insert($data);

        $encrypted_id = md5($result);
        $this->load->library('email');
        $config = array();
        $config['charset'] = 'utf-8';
        $config['useragent'] = 'Codeigniter';
        $config['protocol']= "smtp";
        $config['mailtype']= "html";
        $config['smtp_host']= "ssl://smtp.gmail.com";//pengaturan smtp
        $config['smtp_port']= "465";
        $config['smtp_timeout']= "400";
        $config['smtp_user']= "ebeasiswa.indonesia@gmail.com"; // isi dengan email kamu
        $config['smtp_pass']= "beasiswaindonesia"; // isi dengan password kamu
        $config['crlf']="\r\n"; 
        $config['newline']="\r\n"; 
        $config['wordwrap'] = TRUE;
        //memanggil library email dan set konfigurasi untuk pengiriman email
        $this->email->initialize($config);
        //konfigurasi pengiriman
        $this->email->from($config['smtp_user']);
        $this->email->to($email);
        $this->email->subject("Verifikasi Akun");
        $this->email->message(
            "terimakasih telah melakuan registrasi, untuk memverifikasi silahkan klik tautan dibawah ini<br><br>".site_url("Regispencari/verification/$encrypted_id")
        );      

        //error
        if($this->email->send()){
          	$this->session->set_flashdata('sukses',"Email verifikasi telah dikirim ke email anda, silahkan lakukan verifikasi untuk mengaktifkan akun anda");
            redirect('Awal/login');
        }else{
        	$this->session->set_flashdata('error',"Pendaftaran berhasil, namun email tidak terkirim");
            redirect('Awal/regispencari');
        }
        
    }else{
        $nama = $data['nama'];
        $username = $data['username'];
        $email = $data['email'];
        $this->session->set_flashdata('error','email sudah digunakan');
        redirect('Regispencari');
    }

}
//error
public function verification($key){
    $this->Verifemail->changeActiveState($key);
    $this->load->view('pencari/alertVerifikasi');
    // echo "Selamat kamu telah memverifikasi akun kamu";
    // echo "<br><br><a href='".site_url("Awal/login")."'>Login Sekarang</a>";
}

}






