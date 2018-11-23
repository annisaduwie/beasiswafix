<?php if(!defined('BASEPATH'))exit('No direct	script access allowed');	

class Pencari extends CI_Controller		
{	
	public function __construct()	
	{	
		parent::__construct();	
		$this->load->model('PencariM');
		$this->load->model('PencarianM');
		$this->load->helper('url','form');
		$this->model = $this->PencarianM;

	 	 // $peran=$this->session->userdata('peran');\
        // if($peran!="admin"){
        //  redirect('LoginC');
        //  }
	 	 // $this->load->model('TemplateM');	
	}

	var $data= array();

	public function index(){

		

	}
	public function get_pencari(){
	// $data['pencari']= $this->PencariM->get_pencari()->row_array();
		$data=array(
			"pencari"=>$this->PencariM->get_pencari()->row_array(),
			"aktif" => "pencari"
		);
		$this->load->view('admin/kelola_pencari', $data);

	}

	public function get_nama_pencari(){
		$username = $this->session->userdata('username');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();

		$this->load->view('pencari/data_pribadi', $data);

	}
	public function upload_foto(){

		$id_pencari = $this->input->post('id_pencari');



	// $this->load->library('form_validation');
		
	// 	$this->form_validation->set_rules('pic','pic','required');
		
	// 	if($this->form_validation->run() == FALSE)
	// 	{
	// 		//jika form tidak lengkap maka akan dikembalikan ke route "dosenAdminR"
	// 		redirect('Pencari/get_nama_pencari');
	// 	}
	// 	else
	// 	{

		//upload foto
		$config['upload_path'] = FCPATH.'fileUpload';
		$config['allowed_types'] = 'jpg|png|jpeg';
		$config['max_size']  = '3072';
		$config['remove_space'] = TRUE;
		$config['overwrite'] =  TRUE;


		$this->load->library('upload', $config);

		$this->upload->initialize($config); 

		$this->upload->do_upload('pic');
		$pic = $this->upload->data('file_name');

    // $gambar_new = $pic;

		$dataPencari =  array(
			"profil_pic"=> $pic
		);


		$result = $this->PencariM->editPencari($dataPencari, $id_pencari);




		if($result == TRUE)
		{
			$this->session->set_flashdata('success', 'Data berhasil diubah');
		}
		else
		{
			$this->session->set_flashdata('error', 'Data gagal diubah');
		}	

		redirect('Pencari/get_nama_pencari');


	// }
	}
	public function edit_pencari(){
		//get id univ yang ingin di edit
		$id_pencari = $this->input->post('id_pencari');
		
		
		
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('nama_pencari','Nama','required');
		$this->form_validation->set_rules('username','Kategori Universitas','required');
		$this->form_validation->set_rules('tingkatan','Tingkatan','required');
		
		if($this->form_validation->run() == FALSE)
		{
			//jika form tidak lengkap maka akan dikembalikan ke route "dosenAdminR"
			redirect('Pencari/get_nama_pencari');
		}
		else
		{

			$nama = $this->input->post('nama_pencari');
			$username = $this->input->post('username');
			$tingkatan = $this->input->post('tingkatan');
			

			$dataPencari =  array(
				"nama"=>$nama,
				"username"=>$username,
				"tingkatan"=>$tingkatan,
				"update_dtm"=>date('Y-m-d H-s-i')
			);



			$result = $this->PencariM->editPencari($dataPencari, $id_pencari);
			
			if($result == TRUE)
			{
				$this->session->set_flashdata('success', 'Data berhasil diubah');
			}
			else
			{
				$this->session->set_flashdata('error', 'Data gagal diubah');
			}	
			
			redirect('Pencari/get_nama_pencari');

		}

	}
	public function logoutUser(){	
		$this->session->unset_userdata($userData);
		$this->session->unset_userdata('username');
		$this->session->unset_userdata('password');
		$this->session->unset_userdata('logged_in');
	 	// $this->session->unset_userdata('userA');
	 	// $this->session->unset_userdata('statusA');	

		redirect('Login');	
	}
	public function halaman_lupa_password(){
		$this->load->view('pencari/lupa_password');
	}

	public function forgot_password()
	{
		$this->form_validation->set_error_delimiters('<div style="color:#7E181B; font-size:12px; margin-bottom:2px;">','</div>');
		$this->form_validation->set_rules('password','password','required|min_length[6]');
		$this->form_validation->set_rules('password_konf','password_konf','required|min_length[6]');

		$email_def = $this->input->post('email_def');
		// $email = $this->input->post('email');
		$password = $this->input->post('password');
		$password_konf = $this->input->post('password_konf');

		if($this->form_validation->run() == FALSE){
			$this->session->set_flashdata('error',"Pastikan password minimal 6 karakter.");
			redirect('Pencari/forgot_password_confirm/'.$email_def);
		} else{

			if($password == $password_konf){
	  		//memasukan ke array
				$data = array(  
					'password' => md5($password)
				);
	    	//tambahkan akun ke database
				$this->PencariM->lupapassword($data,$email_def);
				$this->session->set_flashdata('sukses',"Password berhasil diubah!");
				redirect('Login');
			}else{
				$this->session->set_flashdata('error',"Password tidak sesuai!");
				redirect('Pencari/forgot_password_confirm/'.$email_def);
			}

		}
	}
	public function forgot_password_confirm($encrypted_email)
	{
		$data = array(
			'email' => $encrypted_email
		);
		$this->load->view('pencari/lupa_password_confirm', $data);
	}

	public function lupa_pass(){

		$this->form_validation->set_rules('email','email','required');
		$email = $this->input->post('email');

		$cekAkun = $this->db->query("SELECT * FROM pencari WHERE email ='$email'")->num_rows();
		

		if($cekAkun==0){
			if($email == "ebeasiswa.indonesia@gmail.com"){
				$encrypted_email = md5($email);

				// email($email);
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
				$this->email->subject("Konfirmasi perubahan password");
				$this->email->message(
					"Silahkan klik link di bawah ini untuk mengganti password Anda<br><br>".
					site_url("Pencari/forgot_password_confirm/$encrypted_email")
				);
				if($this->email->send()){
					$this->session->set_flashdata('sukses',"Email perubahan password telah dikirim ke email Anda, silahkan cek dan ikuti link yang tertaut!");
					redirect('Login');
				}else{
					$this->session->set_flashdata('error',"Email perubahan password gagal dikirim, silahkan coba lagi!");
					redirect('Login');
				}
			}else{
				$this->session->set_flashdata('error',"Email yang Anda masukkan belum terdaftar.");
				redirect('Login');
			}
		} else{
			if($this->form_validation->run() == FALSE){
				$this->session->set_flashdata('error',"Pastikan mengisi email dengan benar!");
				redirect('Login');
			}else{
				$encrypted_email = md5($email);

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
				$this->email->subject("Konfirmasi perubahan password");
				$this->email->message(
					"Silahkan klik link di bawah ini untuk mengganti password Anda<br><br>".
					site_url("Pencari/forgot_password_confirm/".$encrypted_email)
				);
				if($this->email->send()){
					$this->session->set_flashdata('sukses',"Email perubahan password telah dikirim ke email Anda, silahkan cek dan ikuti link yang tertaut!");
					redirect('Login');
				}else{
					$this->session->set_flashdata('error',"Email perubahan password gagal dikirim, silahkan coba lagi!");
					redirect('Login');
				}
			}
		}


	}
	public function ubah_password(){
		$username = $this->session->userdata('username');
		$id_pencari = $this->session->userdata('id_pencari');

		// $password_lama = $this->input->post('password_lama');
		$password_baru = $this->input->post('password_baru');
		$ulang_password = $this->input->post('ulang_password');
		$EnteredPass = md5($_POST['password_lama']);

		$cekAkun = $this->db->query("SELECT * FROM pencari WHERE username='$username' AND password='$EnteredPass'")->num_rows();
		
		// $cekPassword =  $this->db->query("SELECT password FROM pencari WHERE username='$username'")->row_array();

		if ($cekAkun >= 1){
			if($password_baru != $ulang_password){
				$this->session->set_flashdata('error','Konfirmasi password tidak valid');
				redirect('Pencari/edit_password');
			}
			else{
				$dataPassword =  array(
				"password"=>md5($password_baru)
			);
				$result = $this->PencariM->editPencari($dataPassword, $id_pencari);

				$this->session->set_flashdata('sukses','Password berhasil diubah');
				redirect('Pencari/edit_password');
			}
		}else{
			$this->session->set_flashdata('error','Password lama tidak valid');
				redirect('Pencari/edit_password');
		}

	}

	public function tampil_data_pribadi(){
		$username = $this->session->userdata('username');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
		$this->load->view('pencari/data_pribadi', $data);

	}

	public function tampil_konsultasi(){
		$username = $this->session->userdata('username');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
		$this->load->view('pencari/konsultasi', $data);

	}

	public function tampil_favorit(){
		$username = $this->session->userdata('username');
		$id_pencari=$this->session->userdata['id_pencari'];


		$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
		$data['list_favorit']= $this->PencarianM->tampil_favorit($id_pencari)->result();

		$this->load->view('pencari/pencarian_favorit', $data);
		

	}
// public function tampil_tersimpan(){
// 	$username = $this->session->userdata('username');

// 	$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
// 	$this->load->view('pencari/pencarian_tersimpan', $data);

// }
	public function tampil_detail_pencarian(){
		$this->load->view('pencari/detail');

	}

	public function tampil_pencarian_prodi(){

		$this->load->view('pencari/pencarian_prodi');

	}

	public function tampil_pencarian_tersimpan(){

		$username = $this->session->userdata('username');
		$id_pencari=$this->session->userdata['id_pencari'];

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
		$data['pencarian']= $this->PencarianM->tampil_histori_pencarian($id_pencari)->result();
		$this->load->view('pencari/pencarian_tersimpan', $data);

	}

	public function hapus_pencarian_tersimpan($id_pencarian, $id_pencari){
		$username = $this->session->userdata('username');
		$data['id_pencari']= $this->session->userdata('id_pencari');
		if($this->PencarianM->hapus_histori_pencarian($id_pencarian, $id_pencari)){

			redirect('Pencari/tampil_pencarian_tersimpan',$data);
		}
	}
	


	public function edit_password(){
		$username = $this->session->userdata('username');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
		$this->load->view('pencari/ubah_password', $data);

	}




}