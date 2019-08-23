<?php if(!defined('BASEPATH'))exit('No direct	script access allowed');	

class Pencari extends CI_Controller		
{	
	public function __construct()	
	{	
		parent::__construct();	
		$this->load->model('PencariM');
		$this->load->model('PencarianM');
		$this->load->model('UniversitasM');
		$this->load->helper('url','form');
		$this->model = $this->PencarianM;

	 	 // $peran=$this->session->userdata('peran');\
        // if($peran!="admin"){
        //  redirect('LoginC');
        //  }
	 	 // $this->load->model('TemplateM');	
	}

	var $data= array();

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
		$id_pencari = $this->session->userdata('id_pencari');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();

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

		$ukuran_file = $_FILES['file']['size'];
		$nama_file = $FILES['file']['name'];


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
		if($this->form_validation->run() == FALSE)
		{
			//jika form tidak lengkap maka akan dikembalikan ke route "dosenAdminR"
			redirect('Pencari/get_nama_pencari');
		}
		else
		{
			$nama = $this->input->post('nama_pencari');
			$username = $this->input->post('username');
			$dataPencari =  array(
				"nama"=>$nama,
				"username"=>$username,
				"update_dtm"=>date('Y-m-d H-s-i')
			);

			$result = $this->PencariM->editPencari($dataPencari, $id_pencari);		

			if($result == TRUE)
			{
				$this->session->set_flashdata('success_data_profil', 'Data berhasil diubah');
			}
			else
			{
				$this->session->set_flashdata('error_data_profil', 'Data gagal diubah');
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
		}
		else{
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

		$password_baru = $this->input->post('password_baru');
		$ulang_password = $this->input->post('ulang_password');
		$EnteredPass = md5($_POST['password_lama']);

		$cekAkun = $this->db->query("SELECT * FROM pencari WHERE username='$username' AND password='$EnteredPass'")->num_rows();
		
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
		$id_pencari = $this->session->userdata('id_pencari');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();
		$this->load->view('pencari/data_pribadi', $data);

	}
	public function get_ulasan(){
		$username = $this->session->userdata('username');
		$id_pencari = $this->session->userdata('id_pencari');
		$id_univ = $this->input->post('id_univ');


		$keyword_prodi=$this->input->post('key_prodi');
		$keyword_kategori=$this->input->post('key_kategori');
		$keyword_tingkatan=$this->input->post('key_tingkatan');

	  $data = array(
        'keyword_prodi' => $keyword_prodi,
        'keyword_kategori' => $keyword_kategori,
        'keyword_tingkatan' => $keyword_tingkatan,
        '$id_univ' => $id_univ
    );

		$data['detail_univ'] = $this->UniversitasM->get_universitas_by_id($id_univ)->result_array();

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();
		$this->load->view('pencari/ulasan_univ', $data);

	}

	public function get_tampil_ulasan(){

	    $username = $this->session->userdata('username');
		$id_pencari=$this->session->userdata('id_pencari');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();
		$data['data_ulasan']= $this->PencariM->get_ulasan_by_pencari($id_pencari)->result();
		$this->load->view('pencari/data_ulasan', $data);

	}

	public function get_tampil_detail_ulasan($id_ulasan){

	    $username = $this->session->userdata('username');
		$id_pencari=$this->session->userdata('id_pencari');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();
		$data['data_ulasan']= $this->PencariM->get_ulasan_by_pencari_ulasan($id_pencari, $id_ulasan)->result();
		$this->load->view('pencari/detail_ulasan', $data);

	}


	public function tambah_ulasan(){


	$keyword_prodi=$this->input->post('key_prodi');
	$keyword_kategori=$this->input->post('key_kategori');
	$keyword_tingkatan=$this->input->post('key_tingkatan');

		$judul_ulasan = $this->input->post('judul_ulasan');
    	$deskripsi = $this->input->post('deskripsi_ulasan');
        $rating = $this->input->post('rating');
        $id_univ = $this->input->post('id_univ');

    $data = array(
        'keyword_prodi' => $keyword_prodi,
        'keyword_kategori' => $keyword_kategori,
        'keyword_tingkatan' => $keyword_tingkatan,
        '$id_univ' => $id_univ
    );

        $this->session->set_flashdata('id_univ', $id_univ);

        $id_pencari = $this->session->userdata('id_pencari');

  //       $id_pencarian = $this->db->query("SELECT MAX(id_detail_pencarian) as id_detail_pencarian from detail_pencarian");

		// foreach($id_pencarian->result_array() as $id_pencarian){
		// 	$id_detail_pencarian = $id_pencarian['id_detail_pencarian'];

		// }

        $dataUlasan = array(
        	"judul_ulasan" => $judul_ulasan,
        	"deskripsi_ulasan" => $deskripsi,
        	"rating" => $rating,
        	"status_publikasi" => "Belum disetujui",
        	"id_universitas" => $id_univ,
        	"id_pencari" => $id_pencari

        );

        $this->PencariM->insertUlasan($dataUlasan);
    	
    	$this->load->view('pencari/alert_ulasan');
	}

	 public function update_ulasan_pencari($id_ulasan){

        // POST values
        $rating = $this->input->post('rating');
        $judul_ulasan = $this->input->post('judul_ulasan');
        $deskripsi_ulasan = $this->input->post('deskripsi_ulasan');

        $dataUlasan= array(
        	'rating' => $rating,
        	'judul_ulasan' => $judul_ulasan,
        	'deskripsi_ulasan' => $deskripsi_ulasan,
        	'status_publikasi' => "Belum disetujui"

        );

        $result = $this->PencariM->update_ulasan_pencari($id_ulasan,$dataUlasan);

        if($result > 0){
				$this->session->set_flashdata('success', 'Ulasan Anda berhasil diubah. Untuk publikasi menunggu persetujuan dari admin');
			}else{
				$this->session->set_flashdata('error', 'Ulasan Gagal diubah. Pastikan anda mengisi data sesuai dengan ketentuan');
			}

        redirect('Pencari/get_tampil_detail_ulasan/'.$id_ulasan);

    }
     public function hapus_ulasan($id_ulasan){

      if($this->PencariM->hapus_ulasan_pencari($id_ulasan)){

				$this->session->set_flashdata('success', 'Ulasan Anda berhasil dihapus');
			}else{
				$this->session->set_flashdata('error', 'Ulasan Gagal dihapus');
			}
        redirect('Pencari/get_tampil_ulasan');

    }


	public function tampil_konsultasi(){
		$username = $this->session->userdata('username');
		$id_pencari = $this->session->userdata('id_pencari');
		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();


		$this->load->view('pencari/konsultasi', $data);

	}
	public function tambah_konsultasi(){

		$username = $this->session->userdata('username');
		$id_pencari = $this->session->userdata('id_pencari');
		$no_hp = $this->input->post('no_hp');
		$nama_prodi = $this->input->post('nama_prodi');
		$kategori = $this->input->post('kategori');
		$deskripsi = $this->input->post('deskripsi');
		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();

		$dataKonsultasi = array(
			'no_hp'=>$no_hp,
			'program_studi'=>$nama_prodi,
			'kategori'=>$kategori,
			'deskripsi'=>$deskripsi,
			'status'=>"belum dibalas",
			'id_pencari'=>$id_pencari

		);

		$result = $this->PencariM->insert_konsultasi($dataKonsultasi);

		if($result > 0)
			{
			$this->session->set_flashdata('success', 'Data berhasil dikirim');
			}
			else
			{
			$this->session->set_flashdata('error', 'Data gagal dikirim');
			}

			$this->load->view('pencari/konsultasi', $data);

	}

	public function tampil_favorit(){
		$username = $this->session->userdata('username');
		$id_pencari=$this->session->userdata('id_pencari');
		$id_univ=$this->input->post('id_univ');
		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();
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
		$id_pencari=$this->session->userdata('id_pencari');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();
		$data['pencarian']= $this->PencarianM->tampil_histori_pencarian($id_pencari)->result();
		$this->load->view('pencari/pencarian_tersimpan', $data);

	}

	public function tampil_pencarian_beasiswa_tersimpan(){

		$username = $this->session->userdata('username');
		$id_pencari=$this->session->userdata('id_pencari');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();
		$data['pencarian']= $this->PencarianM->tampil_histori_pencarian_beasiswa($id_pencari)->result();
		$this->load->view('pencari/pencarian_beasiswa_tersimpan', $data);

	}

	public function hapus_pencarian_tersimpan($id_pencarian, $id_pencari){
		$username = $this->session->userdata('username');
		$data['id_pencari']= $this->session->userdata('id_pencari');
		$data=array(
			"status"=>"Sudah Dihapus"
		);
		$this->db->where('id_pencarian', $id_pencarian);
		$this->db->where('id_pencari', $id_pencari);
		$this->db->update('pencarian', $data);
		redirect('Pencari/tampil_pencarian_tersimpan',$data);
		
	}
	public function hapus_pencarian_beasiswa_tersimpan($id_pencarian_beasiswa, $id_pencari){
		$username = $this->session->userdata('username');
		$data['id_pencari']= $this->session->userdata('id_pencari');

		$data=array(
			"status"=>'Sudah Dihapus',
		);
		$this->db->where('id_pencarian_beasiswa', $id_pencarian_beasiswa);
		$this->db->where('id_pencari', $id_pencari);
		$this->db->update('pencarian_beasiswa', $data);

			redirect('Pencari/tampil_pencarian_beasiswa_tersimpan',$data);
		
	}
	


	public function edit_password(){
		$username = $this->session->userdata('username');
		$id_pencari = $this->session->userdata('id_pencari');

		$data['nama_pencari']= $this->PencariM->get_nama_pencari($id_pencari)->row_array();
		$this->load->view('pencari/ubah_password', $data);

	}
}



