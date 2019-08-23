<?php if(!defined('BASEPATH'))exit('No direct	script access allowed');	

class AdminC extends CI_Controller		
{	
	public function __construct()	
	{	
		parent::__construct();
		no_access_admin();
		
		$this->load->model('PencariM');
		$this->load->model('UniversitasM');
		$this->load->model('FakultasM');
		$this->load->model('ProdiM');
		$this->load->model('BeasiswaM');
		$this->load->model('KonsultasiM');
		$this->load->helper(array('url','form'));
		$this->model = $this->PencariM;
		$this->model = $this->KonsultasiM;
		$this->model = $this->FakultasM;
		$this->model = $this->ProdiM;
		$this->model = $this->UniversitasM;
		$this->model = $this->BeasiswaM;
	 	 // $peran=$this->session->userdata('peran');\
        // if($peran!="admin"){
        //  redirect('LoginC');
        //  }
	 	 // $this->load->model('TemplateM');	
	}

	var $data= array();

		
	public function tampil_admin_fakultas($id_universitas){

		$data = array(
			'id' => $id_universitas,
			'nama_univ' => $this->UniversitasM->get_full_univ($id_universitas)->row_array(),
			'id_fakultas' => $this->FakultasM->get_fakultas($id_universitas)->row_array()
		);

		$data['universitas']= $this->UniversitasM->get_universitas_by_id($id_universitas)->result();
		$data['fakultas']= $this->FakultasM->get_fakultas($id_universitas)->result();
		$data['beasiswa']= $this->BeasiswaM->get_beasiswa($id_universitas)->result();

		
		$this->load->view('admin/kelola_fakultas', $data);

	}


	public function get_pencari(){
		$data['pencari']= $this->PencariM->get_pencari()->result();
		$this->load->view('admin/kelola_pencari', $data);
	}

	public function get_dashboard(){
		cekAdmin();	
		$data['universitas_favorit']= $this->UniversitasM->get_universitas_favorit()->result();
		$this->load->view('admin/homeAdmin', $data);

	}
	public function get_konsultasi(){
		$id_pencari = $this->session->userdata('id_pencari');

		$data['konsultasi']=$this->PencariM->get_konsultasi()->result();
		$this->load->view('admin/kelola_konsultasi', $data);

	}
	public function get_ulasan(){
		$id_pencari = $this->session->userdata('id_pencari');

		$data['ulasan']=$this->PencariM->get_full_ulasan()->result();
		$data['ulasan_disetujui']=$this->PencariM->get_full_ulasan_disetujui()->result();
		$data['ulasan_dibatalkan']=$this->PencariM->get_full_ulasan_dibatalkan()->result();
		$this->load->view('admin/kelola_ulasan', $data);

	}
	public function update_ulasan(){
		$id_pencari = $this->session->userdata('id_pencari');
		$judul_ulasan = $this->input->post('judul_ulasan');
		$data['ulasan']=$this->PencariM->get_full_ulasan()->result();
		$id_ulasan = $this->input->post('id_ulasan');

		if(isset($_POST['setujui'])){
			$dataUlasan = array(
				"status_publikasi" => "Sudah disetujui"
			);
			

			$this->PencariM->update_ulasan($id_ulasan, $dataUlasan);

		}elseif(isset($_POST['batalkan'])){
			$dataUlasan = array(
				"status_publikasi" => "Tidak disetujui"
			);
			
			$this->PencariM->update_ulasan($id_ulasan, $dataUlasan);
		}

		// $this->load->view('admin/kelola_ulasan', $data);
		redirect('AdminC/get_ulasan');

	}
	public function filter_konsultasi(){
		$id_pencari = $this->session->userdata('id_pencari');
		$filter_konsultasi = $this->input->post('filter_konsultasi');

		$data['konsultasi']=$this->PencariM->get_pencarian_konsultasi($filter_konsultasi)->result();
		$this->load->view('admin/kelola_konsultasi', $data);


	}
	public function get_detail_konsultasi($id_konsultasi){
		$id_pencari = $this->session->userdata('id_pencari');

		$data['konsultasi']=$this->PencariM->get_detail_konsultasi($id_konsultasi)->result();
		$this->load->view('admin/detail_konsultasi', $data);

	}
	
	public function get_data_scraping_beasiswa(){

		$data['beasiswa']= $this->BeasiswaM->get_beasiswa_scraping()->result();
		$this->load->view('admin/detail_scraping_beasiswa_umum', $data);
	}

	public function get_pencarian_scraping_beasiswa(){

		$date = $this->input->post('date');
		$from = date("Y-m-d", strtotime(substr($date, 0, 10)));
		$to = date("Y-m-d", strtotime(substr($date, 13, 10)));

		if (isset($_POST['btn_submit'])){

			$data = array(
				'date_value' => $date
			);
		}else{

			$data = array(
				'date_value' => ""
			);
		}
		
		$data['beasiswa']= $this->BeasiswaM->get_beasiswa_scraping_date($from, $to)->result();
		$this->load->view('admin/detail_scraping_beasiswa_umum', $data);
	}

	public function replyKonsul($id_konsultasi){
		$id_pencari = $this->session->userdata('id_pencari');
		$email = $this->input->post('email');
		$subjek = $this->input->post('subjek');
		$pesan = $this->input->post('pesan');
		
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
        $this->email->subject($subjek);
        $this->email->message($pesan);
        	if($this->email->send()){
        		$data = array('status'=> "Sudah Dibalas");
				$this->db->where('id_konsultasi',$id_konsultasi);
				$this->db->update('konsultasi',$data);
				$this->session->set_flashdata('success', 'Pesan sudah terkirim');
				redirect('AdminC/get_detail_konsultasi/'.$id_konsultasi);
			}else{
				$this->session->set_flashdata('error', 'Pesan gagal terkirim');
				redirect('AdminC/get_detail_konsultasi/'.$id_konsultasi);
			}
		$data['konsultasi']=$this->PencariM->get_detail_konsultasi($id_konsultasi)->result();
		$this->load->view('admin/reply_konsul', $data);
	}
	public function hapusKonsultasi($id_konsultasi){
		
		if($this->KonsultasiM->hapus_konsultasi($id_konsultasi)){
			redirect('AdminC/get_konsultasi');
		}
	}
	public function hapusPencari($id_pencari){
		$data=array(
			"isDelete"=>'1',
		);
		$this->db->where('id_pencari', $id_pencari);
		$this->db->update('pencari', $data);

		redirect('AdminC/get_pencari');
	}

	public function get_universitas(){
		$data['universitas']= $this->UniversitasM->get_universitas()->result();
		$this->load->view('admin/kelola_universitas', $data);

	}
	public function get_beasiswa(){
		$data['universitas']= $this->UniversitasM->get_universitas()->result();
		$data['beasiswa']= $this->BeasiswaM->get_beasiswa()->result();
		$this->load->view('admin/kelola_beasiswa', $data);
	}

	public function get_beasiswa_umum(){

		$data['beasiswa']= $this->BeasiswaM->get_beasiswa_umum()->result();
		$this->load->view('admin/kelola_beasiswa', $data);
	}

	public function tambah_beasiswa_umum(){

		$this->load->library('form_validation');
	
		$this->form_validation->set_rules('nama_beasiswa_umum','nama_beasiswa_umum','trim|required');
		$this->form_validation->set_rules('url_beasiswa_umum','url_beasiswa_umum','trim|required');

		if($this->session->userdata('logged_in')){

		$id_admin=$this->session->userdata('id_admin');

		if($this->form_validation->run() == FALSE)
		{
			$this->session->set_flashdata('error','Data yang diisi belum lengkap');
			redirect('AdminC/get_beasiswa_umum');
		}
		else{
			$nama_beasiswa_umum = $this->input->post('nama_beasiswa_umum');
			$negara = $this->input->post('negara');
			$url_beasiswa_umum = $this->input->post('url_beasiswa_umum');

			if($negara == ""){
				$negara = NULL;
			}
			$dataBeasiswaUmum =  array(
					'nama_beasiswa_umum' =>$nama_beasiswa_umum,
					'negara' =>$negara,
					'url_beasiswa_umum' =>$url_beasiswa_umum,
					'id_admin' =>$id_admin
				);
			$result = $this->BeasiswaM->tambah_beasiswa_umum($dataBeasiswaUmum);

			if($result > 0){
				$this->session->set_flashdata('success', 'Beasiswa berhasil ditambah');
			}else{
				
				$this->session->set_flashdata('error', 'Beasiswa gagal ditambah');
			}
		}
	}
		redirect('AdminC/get_beasiswa_umum');
	}

	public function edit_beasiswa_umum(){
		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama_beasiswa_umum','nama_beasiswa_umum','trim|required');
		$this->form_validation->set_rules('url_beasiswa_umum','url_beasiswa_umum','trim|required');

		if($this->form_validation->run() == FALSE)
		{
			$this->session->set_flashdata('error','Data yang diisi belum lengkap');
			redirect('AdminC/get_beasiswa_umum');
		}
		else{
			$id_beasiswa_umum = $this->input->post('id_beasiswa_umum');
			$nama_beasiswa_umum = $this->input->post('nama_beasiswa_umum');
			$negara = $this->input->post('negara');
			$url_beasiswa_umum = $this->input->post('url_beasiswa_umum');

			if($negara == ""){
				$negara = NULL;
			}
			$dataEditBeasiswaUmum =  array(
					'nama_beasiswa_umum' =>$nama_beasiswa_umum,
					'negara' =>$negara,
					'url_beasiswa_umum' =>$url_beasiswa_umum
				);
			$result = $this->BeasiswaM->edit_beasiswa_umum($id_beasiswa_umum, $dataEditBeasiswaUmum );
		}
		if($result > 0){
				$this->session->set_flashdata('success', 'Beasiswa berhasil diubah');
			}else{
				$this->session->set_flashdata('error', 'Beasiswa gagal diubah');
			}
		redirect('AdminC/get_beasiswa_umum');
	}

	public function hapus_beasiswa_scraping($id_konten_beasiswa_umum){

		if($this->BeasiswaM->hapus_beasiswa_scraping($id_konten_beasiswa_umum)){
			$this->session->set_flashdata('success', 'Data beasiswa berhasil dihapus');
			}
			else
			{
			$this->session->set_flashdata('error', 'Data beasiswa gagal dihapus');
			} 
			redirect('AdminC/get_data_scraping_beasiswa');
	}

	public function hapus_beasiswa_umum($id_beasiswa_umum){
		
		if($this->BeasiswaM->hapus_beasiswa_umum($id_beasiswa_umum)){
			$this->session->set_flashdata('success', 'Beasiswa berhasil dihapus');
			}
			else
			{
			$this->session->set_flashdata('error', 'Beasiswa gagal dihapus');
			} 
			redirect('AdminC/get_beasiswa_umum');
	}


	public function tambah_beasiswa(){

		$this->load->library('form_validation');
		$this->form_validation->set_rules('url_beasiswa','URL Universitas','trim|required');

		if($this->form_validation->run() == FALSE)
		{
			//jika form tidak lengkap maka akan dikembalikan ke halaman beasiswa
			$this->session->set_flashdata('error','Data yang diisi belum lengkap');
			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
		}else{
			$url_beasiswa=$this->input->post('url_beasiswa');
			$id_universitas =$this->input->post('id_universitas');

			$dataDetailBeasiswa =  array(
				"id_universitas"=>$id_universitas
			);

			$result = $this->db->insert('beasiswa_universitas', $dataDetailBeasiswa);
			$id_detail_beasiswa_fk = $this->db->query("SELECT MAX(id_beasiswa_univ) AS id_beasiswa_univ FROM beasiswa_universitas");

			foreach ($id_detail_beasiswa_fk->result_array() as $beasiswa) {
				$data =  array(
					"url"=>$url_beasiswa,
					"id_beasiswa_univ"=>$beasiswa['id_beasiswa_univ']
				);
				$result = $this->db->insert('beasiswa',$data);	
			}
		}
		if($result > 0){
			$this->session->set_flashdata('success', 'Data berhasil ditambah');
		}else{
			$this->session->set_flashdata('error', 'Data gagal ditambah');
		} 

			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);

}

	public function edit_beasiswa(){
		$this->load->library('form_validation');
		$this->form_validation->set_rules('url_beasiswa','URL Universitas','trim|required');
		$id_universitas  = $this->input->post('id_universitas');

		if($this->form_validation->run() == FALSE)
		{
			//jika form tidak lengkap maka akan dikembalikan ke halaman beasiswa
			$this->session->set_flashdata('error','Data yang diisi belum lengkap');
			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
		}else{
			$id_detail_beasiswa=$this->input->post('id_beasiswa_univ');
			$id_beasiswa=$this->input->post('id_beasiswa');
			$url_beasiswa=$this->input->post('url_beasiswa');
			$dataDetail = array(
					"id_universitas"=> $id_universitas
				);	
			$result = $this->BeasiswaM->edit_detailBeasiswa($dataDetail, $id_detail_beasiswa);
			$data =  array(
					"url"=>$url_beasiswa
				);
				
			$result = $this->BeasiswaM->edit_beasiswa($data, $id_beasiswa);
			if($result == TRUE){
				$this->session->set_flashdata('success', 'Data berhasil diubah');
			}else{
				$this->session->set_flashdata('error', 'Data gagal diubah');
			} 

			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
		 }
	}

	public function hapus_beasiswa($id_universitas, $id_detail){
		
		if($this->BeasiswaM->hapus_beasiswa($id_detail)){
			$this->session->set_flashdata('success', 'Data berhasil dihapus');
			}
			else
			{
			$this->session->set_flashdata('error', 'Data gagal dihapus');
			} 
			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
	}

	public function tambah_universitas(){
		//validasi inputan admin
		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama_universitas','Nama Universitas','trim|required');
		$this->form_validation->set_rules('url_universitas','URL Universitas','trim|required');
		$this->form_validation->set_rules('kategori_universitas','Kategori Universitas','required');
		$this->form_validation->set_rules('negara','Negara','required');
		$this->form_validation->set_rules('alamat_universitas','Alamat Universitas','required');
		$this->form_validation->set_rules('no_telp','No Telepon','required');

		if($this->form_validation->run() == FALSE)
		{
			$this->session->set_flashdata('error','Data Belum diisi');
			redirect('AdminC/get_universitas');
		}
		else
		{
			$nama_universitas = $this->input->post('nama_universitas');
			$url = $this->input->post('url_universitas');
			$kategori = $this->input->post('kategori_universitas');
			$negara = $this->input->post('negara');
			$deskripsi_universitas=$this->input->post('deskripsi_universitas');
			$alamat_universitas=$this->input->post('alamat_universitas');
			$email=$this->input->post('email');
			$no_telp=$this->input->post('no_telp');
			$cekNamaUniv = $this->UniversitasM->cek_nama_universitas($nama_universitas)->num_rows();
			//upload gambar universitas
			$config['upload_path'] = FCPATH.'universitas';
			$config['allowed_types'] = 'jpg|png|jpeg';
			$config['max_size']  = '3072';
			$config['remove_space'] = TRUE;
			$config['overwrite'] =  TRUE;
			$this->load->library('upload', $config);
			$this->upload->initialize($config); 
			$this->upload->do_upload('picuniv');
			$pic = $this->upload->data('file_name');
			$dataUniv =  array(
				"nama_universitas"=>$nama_universitas,
				"url_universitas"=>$url,
				"kategori_universitas"=>$kategori,
				"negara"=>$negara,
				"gambar_universitas"=>$pic
			);
			if ($cekNamaUniv < 1){
			$result = $this->UniversitasM->insert($dataUniv);
			$max_id = $this->db->query("SELECT MAX(id_universitas) as id_universitas FROM universitas");

			foreach ($max_id->result_array() as $max) {
				$dataDetailUniv= array(
					"id_universitas"=>$max['id_universitas'],
					"deskripsi_universitas"=>$deskripsi_universitas,
					"alamat_universitas"=>$alamat_universitas,
					"email"=>$email,
					"no_telp"=>$no_telp
				);
				$dataIdUniv = array(
					"id_universitas" => $max['id_universitas']

				);
				//insert ke database
				$result = $this->db->insert('detail_universitas', $dataDetailUniv);
				$result = $this->db->insert('fak_univ',$dataIdUniv);
			}
				//menampilkan alert jika berhasil atau gagal
		if($result > 0)
		{
			$this->session->set_flashdata('success', 'Universitas berhasil ditambah');
		}
		else
		{
			$this->session->set_flashdata('error', 'Universitas gagal ditambah');
		} 
		}else{
			$this->session->set_flashdata('error', 'Nama universitas sudah digunakan');
		}
	
		redirect('AdminC/get_universitas');
	}
}


	public function edit_universitas(){
		//get id univ yang ingin di edit
		$id_universitas = $this->input->post('id_universitas');
		$id_detail_universitas = $this->input->post('id_detail_universitas');
		//validasi inputan admin
		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama_universitas','Nama Universitas','trim|required');
		$this->form_validation->set_rules('url_universitas','URL Universitas','trim|required');
		$this->form_validation->set_rules('kategori_universitas','Kategori Universitas','required');
		$this->form_validation->set_rules('negara','Negara','required');
		$this->form_validation->set_rules('deskripsi_universitas','Deskripsi Universitas','required');
		$this->form_validation->set_rules('alamat_universitas','Alamat Universitas','required');
		$this->form_validation->set_rules('kategori_universitas','Kategori Universitas','required');$this->form_validation->set_rules('kategori_universitas','Kategori Universitas','required');
		if($this->form_validation->run() == FALSE)
		{
			$this->session->set_flashdata('error','Data Belum diisi');
			redirect('AdminC/get_universitas');
		}
		else
		{
			$nama_universitas = $this->input->post('nama_universitas');
			$url = $this->input->post('url_universitas');
			$kategori = $this->input->post('kategori_universitas');
			$negara = $this->input->post('negara');
			$deskripsi = $this->input->post('deskripsi_universitas');
			$alamat_lengkap = $this->input->post('alamat_universitas');
			$email = $this->input->post('email');
			$no_telp = $this->input->post('no_telp');
			$cekNamaUniv = $this->UniversitasM->cek_nama_universitas($nama_universitas)->num_rows();

			//ganti foto universitas
			$config['upload_path'] = FCPATH.'universitas';
			$config['allowed_types'] = 'jpg|png|jpeg';
			$config['max_size']  = '3072';
			$config['remove_space'] = TRUE;
			$config['overwrite'] =  TRUE;
			$this->load->library('upload', $config);
			$this->upload->initialize($config); 
			$this->upload->do_upload('pic');
			$pic = $this->upload->data('file_name');	
			
			if(empty($pic)){
				$dataUniversitas =  array(
					"nama_universitas"=>$nama_universitas,
					"url_universitas"=>$url,
					"kategori_universitas"=>$kategori,
					"negara"=>$negara
				);
				$dataDetailUniversitas = array(
					"deskripsi_universitas" => $deskripsi,
					"alamat_universitas" => $alamat_lengkap,
					"email" => $email,
					"no_telp" => $no_telp );
			}else{
				$dataUniversitas =  array(
					"nama_universitas"=>$nama_universitas,
					"url_universitas"=>$url,
					"kategori_universitas"=>$kategori,
					"negara"=>$negara,
					"gambar_universitas"=>$pic );
				$dataDetailUniversitas = array(
					"deskripsi_universitas" => $deskripsi,
					"alamat_universitas" => $alamat_lengkap,
					"no_telp" => $no_telp );
			}	
			$result = $this->UniversitasM->editUniversitas($dataUniversitas, $id_universitas);
			$result = $this->UniversitasM->editDetailUniversitas($dataDetailUniversitas, $id_detail_universitas);	
			if($result == TRUE){
				$this->session->set_flashdata('success', 'Universitas berhasil diubah');
			}else{
				$this->session->set_flashdata('error', 'Universitas gagal diubah');
			}		
			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
		}
	}

	public function hapusUniv($id_univ){

		$cek_delete_prodi=$this->UniversitasM->cek_delete_univ($id_univ)->num_rows();
		$cek_delete_beasiswa=$this->UniversitasM->cek_detail_univ_beasiswa($id_univ)->num_rows();
		$cek_delete_fakultas=$this->UniversitasM->cek_detail_univ_fakultas($id_univ)->num_rows();
		$cek_delete_only_beasiswa=$this->UniversitasM->cek_detail_univ_only_beasiswa($id_univ)->num_rows();


		if($cek_delete > 0){
			if($this->UniversitasM->delete_detail_univ($id_univ)){
				$this->session->set_flashdata('success', 'Universitas berhasil dihapus');
			}else{
				$this->session->set_flashdata('error', 'Universitas gagal dihapus');
			}	
			redirect('AdminC/get_universitas');

		}else if($cek_delete_beasiswa > 0){
			if($this->UniversitasM->delete_detail_univ_beasiswa($id_univ)){
				$this->session->set_flashdata('success', 'Universitas berhasil dihapus');
			}else{
				$this->session->set_flashdata('error', 'Universitas gagal dihapus');
			}	
			redirect('AdminC/get_universitas');
			
		}else if($cek_delete_fakultas > 0){

			if($this->UniversitasM->delete_detail_univ_fakultas($id_univ)){
				$this->session->set_flashdata('success', 'Universitas berhasil dihapus');
			}else{
				$this->session->set_flashdata('error', 'Universitas gagal dihapus');
			}	
			redirect('AdminC/get_universitas');

		}else if($cek_delete_only_beasiswa > 0){
			if($this->UniversitasM->delete_detail_univ_only_beasiswa($id_univ)){
			$this->session->set_flashdata('success', 'Universitas berhasil dihapus');
			}else{
				$this->session->set_flashdata('error', 'Universitas gagal dihapus');
			}	
			redirect('AdminC/get_universitas');

		}
		else{
			if($this->UniversitasM->delete_univ($id_univ)){
			$this->session->set_flashdata('success', 'Universitas berhasil dihapus');
			}else{
				$this->session->set_flashdata('error', 'Universitas gagal dihapus');
			}		
			redirect('AdminC/get_universitas');
		}
		
	}

	public function tambah_fakultas(){

		$id_universitas = $this->input->post('id_universitas');
		$fakultas = $this->input->post('nama_fakultas');
		$id_prodi = $this->input->post('id_prodi');
		$id_fakultas = $this->input->post('id_fakultas');
		$nama_prodi = $this->input->post('nama_prodi');
		$tingkatan = $this->input->post('tingkatan');
		$cekNamaFakultas = $this->FakultasM->cek_nama_fakultas($fakultas,$id_universitas)->num_rows();

		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama_fakultas','Fakultas','trim|required');

		if($this->form_validation->run() == FALSE){
      
			$this->session->set_flashdata('error','Data Belum diisi');
			redirect('AdminC/tampil_admin_fakultas');
		}else if($cekNamaFakultas < 1){
			$dataFakultas =  array(
				'nama_fakultas'=>$fakultas	
			);
			$result = $this->FakultasM->insertFakultas($dataFakultas);

			$id_fakultas_db = $this->db->query("SELECT MAX(id_fakultas) AS id_fakultas FROM fakultas");
			foreach ($id_fakultas_db->result_array() as $id_fakultas) {
				$dataDetailFakultas =  array(
					"id_universitas"=> $id_universitas,
					'id_fakultas' =>$id_fakultas['id_fakultas']
			);
		}
			$result = $this->db->insert('fak_univ',$dataDetailFakultas);
			if($result > 0)
			{
				$this->session->set_flashdata('success', 'Fakultas berhasil ditambah');
			}else{
				$this->session->set_flashdata('error', 'Fakultas gagal ditambah');
			}		
		}else{
			$this->session->set_flashdata('error', 'Nama fakultas sudah digunakan');
		}
		redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
	}

	public function edit_fakultas(){
		//mengambil id fakultas yang ingin di edit
		$id_fakultas = $this->input->post('id_fakultas');
		//mengambil id universitas yang ingin di edit
		$id_universitas = $this->input->post('id_universitas');
		$fakultas= $this->input->post('nama_fakultas');
		$cekNamaFakultas = $this->FakultasM->cek_nama_fakultas($fakultas,$id_universitas)->num_rows();

		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama_fakultas','Kategori Prodi','required');	
		if($this->form_validation->run() == FALSE)
		{
			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
		}else if($cekNamaFakultas < 1) {
			$dataFakultas =  array(
				"nama_fakultas"=>$fakultas
			);
			$result = $this->FakultasM->editFakultas($dataFakultas, $id_fakultas);	
			if($result == TRUE)
			{
				$this->session->set_flashdata('success', 'Fakultas berhasil diubah');
			}
			else
			{
				$this->session->set_flashdata('error', 'Fakultas gagal diubah');
			}	
			
		}else{
			$this->session->set_flashdata('error', 'Nama fakultas sudah digunakan');
		}
		redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
	}

	public function hapusFakultas($id_fakultas, $id_universitas){

		if($this->FakultasM->delete_by_id($id_fakultas)){
			$this->session->set_flashdata('success', 'Fakultas berhasil dihapus');
			}
			else
			{
				$this->session->set_flashdata('error', 'Fakultas gagal dihapus');
			}	
			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
		

	}





	public function logoutAdmin(){	
		$this->session->unset_userdata($userData);
		$this->session->unset_userdata('username');
		$this->session->unset_userdata('password');
		$this->session->unset_userdata('logged_in');
	 	// $this->session->unset_userdata('userA');
	 	// $this->session->unset_userdata('statusA');	
		redirect('Login');	
	}




}


