<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class regispencari extends CI_Controller  {

	function __construct() {
        parent::__construct();
        $this->load->model('PencariM');
        $this->load->model('verifemail');
    }
    function index() {
        $this->load->view('pencari/register');
    }
    function tambah_data() {

     


      $nama = $this->input->post('nama');
      $username = $this->input->post('username');
      $password = md5($this->input->post('password'));
      $email = $this->input->post('email');
      $tingkatan = $this->input->post('tingkatan');

            // $cekEmail=$this->PencariM->cekEmailPencari($email)->row();
      $cekEmail=$this->PencariM->cekEmail('pencari', $email);

      // $key = $this->PencariM->cekId($id_pencari);

  


      $this->load->library('form_validation');
      $this->form_validation->set_rules('nama', 'nama', 'required');
      $this->form_validation->set_rules('username', 'username', 'required');
      $this->form_validation->set_rules('password', 'password', 'required');
      $this->form_validation->set_rules('email', 'email', 'required');

      if($this->form_validation->run() == FALSE ){

        redirect('regispencari');

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
//         $id = $this->PencariM->getId($email);

// //         $insert = $this->db->insert('pencari', $data);
// //         if ($insert) {
// //             echo json_encode(array('status' => True ));
// //         } else{
// //             echo json_encode(array('status' => False ));
// //         }

//         foreach ($id->result_array() as $key) {
//             $id_pencari = $key['id_pencari'];
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
            "terimakasih telah melakuan registrasi, untuk memverifikasi silahkan klik tautan dibawah ini<br><br>".site_url("regispencari/verification/$encrypted_id")
        );
        
  //error
        if($this->email->send()){
            // $data = array(
            //  "getstatus" => $this->Mhome->daftar_berhasil()->row_array(),
            // );
            // $data['cart'] = $this->cart->contents();
            // $this->load->view("vdaftar",$data);
            redirect('Awal');
        }else{
            // $data['cart'] = $this->cart->contents();
            // $this->load->view("vdaftar",$data);
            redirect('Awal/home');
        }



    }else{

        $nama = $data['nama'];
        $username = $data['username'];
        $email = $data['email'];

        $this->session->set_flashdata('error','*email sudah digunakan');
        redirect('regispencari');
//header("location: ".$_SERVER['HTTP_REFERER']);
    }

}
//error
public function verification($key){

    $this->verifemail->changeActiveState($key);

    echo "Selamat kamu telah memverifikasi akun kamu";
    echo "<br><br><a href='".site_url("Awal/login")."'>Kembali ke Menu Login</a>";
}






}






