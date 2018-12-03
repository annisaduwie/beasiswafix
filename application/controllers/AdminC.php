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
		$this->load->helper(array('url','form'));
		$this->model = $this->PencariM;
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

	public function index(){
		cekAdmin();	
		$this->load->view('admin/homeAdmin');
	}

	public function tampil_admin_fakultas($id_universitas){
	// print_r($id_universitas);
		

		$data = array(
			'id' => $id_universitas,
			'nama_univ' => $this->UniversitasM->get_full_univ($id_universitas)->row_array(),
			'id_fakultas' => $this->FakultasM->get_fakultas($id_universitas)->row_array()
		);

		$data['universitas']= $this->UniversitasM->get_universitas()->result();
		$data['fakultas']= $this->FakultasM->get_fakultas($id_universitas)->result();
		$data['beasiswa']= $this->BeasiswaM->get_beasiswa($id_universitas)->result();

		
		$this->load->view('admin/kelola_fakultas', $data);

	}


	public function get_pencari(){
		$data['pencari']= $this->PencariM->get_pencari()->result();
		$this->load->view('admin/kelola_pencari', $data);

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
		// $data['universitas']= $this->UniversitasM->get_universitas()->result();
		$data['beasiswa']= $this->BeasiswaM->get_beasiswa_umum()->result();
		$this->load->view('admin/kelola_beasiswa', $data);
	}

	public function tambah_beasiswa_umum(){

		$this->load->library('form_validation');
	
		$this->form_validation->set_rules('nama_beasiswa_umum','nama_beasiswa_umum','trim|required');
		$this->form_validation->set_rules('url_beasiswa_umum','url_beasiswa_umum','trim|required');

		if($this->form_validation->run() == FALSE)
		{
			$this->session->set_flashdata('error','Data yang diisi belum lengkap');
			redirect('AdminC/get_beasiswa_umum');
		}
		else{
			$nama_beasiswa_umum = $this->input->post('nama_beasiswa_umum');
			$jenjang = $this->input->post('jenjang');
			$kategori_beasiswa_umum = $this->input->post('kategori_beasiswa_umum');
			$negara = $this->input->post('negara');
			$url_beasiswa_umum = $this->input->post('url_beasiswa_umum');

			if($negara == ""){
				$negara = NULL;
			}
			$dataBeasiswaUmum =  array(
					'nama_beasiswa_umum' =>$nama_beasiswa_umum,
					'jenjang' =>$jenjang,
					'kategori_beasiswa_umum' =>$kategori_beasiswa_umum,
					'negara' =>$negara,
					'url_beasiswa_umum' =>$url_beasiswa_umum
				);





			$result = $this->BeasiswaM->tambah_beasiswa_umum($dataBeasiswaUmum);

			if($result > 0)
			{
			$this->session->set_flashdata('success', 'Data berhasil ditambah');
			}
			else
			{
			$this->session->set_flashdata('error', 'Data gagal ditambah');
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
			$jenjang = $this->input->post('jenjang');
			$kategori_beasiswa_umum = $this->input->post('kategori_beasiswa_umum');
			$negara = $this->input->post('negara');
			$url_beasiswa_umum = $this->input->post('url_beasiswa_umum');

			if($negara == ""){
				$negara = NULL;
			}

			$dataEditBeasiswaUmum =  array(
					'nama_beasiswa_umum' =>$nama_beasiswa_umum,
					'jenjang' =>$jenjang,
					'kategori_beasiswa_umum' =>$kategori_beasiswa_umum,
					'negara' =>$negara,
					'url_beasiswa_umum' =>$url_beasiswa_umum
				);



			$result = $this->BeasiswaM->edit_beasiswa_umum($id_beasiswa_umum, $dataEditBeasiswaUmum );


		}
		if($result > 0)
			{
			$this->session->set_flashdata('success', 'Data berhasil diubah');
			}
			else
			{
			$this->session->set_flashdata('error', 'Data gagal diubah');
			}

		redirect('AdminC/get_beasiswa_umum');


	}
	public function hapus_beasiswa_umum($id_beasiswa_umum){
		
		if($this->BeasiswaM->hapus_beasiswa_umum($id_beasiswa_umum)){
			$this->session->set_flashdata('success', 'Data berhasil dihapus');
			}
			else
			{
			$this->session->set_flashdata('error', 'Data gagal dihapus');
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

			if($result > 0)
			{
			$this->session->set_flashdata('success', 'Data berhasil ditambah');
			}
			else
			{
			$this->session->set_flashdata('error', 'Data gagal ditambah');
			} 

			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
			// echo $nama_beasiswa;
			// echo $url_beasiswa;
			// echo $kategori_beasiswa;
			// echo $nama_univ;
			// echo $tingkatan;
			// echo $tahun;

		
			// echo $id_univ;



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

			// foreach ($id_univ->result_array() as $univ) {
			// 	print_r($univ['id_universitas']);
			$dataDetail = array(
					"id_universitas"=> $id_universitas
				);
				

				$result = $this->BeasiswaM->edit_detailBeasiswa($dataDetail, $id_detail_beasiswa);
			// }

			$data =  array(
					"url"=>$url_beasiswa
				);
				
			$result = $this->BeasiswaM->edit_beasiswa($data, $id_beasiswa);
			
			if($result == TRUE)
			{
			$this->session->set_flashdata('success', 'Data berhasil diubah');
			}
			else
			{
			$this->session->set_flashdata('error', 'Data gagal diubah');
			} 

			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
			// echo $nama_beasiswa;
			// echo $url_beasiswa;
			// echo $kategori_beasiswa;
			// echo $nama_univ;
			// echo $tingkatan;
			// echo $tahun;

		
			// echo $id_univ;


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


		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama_universitas','Nama Universitas','trim|required');
		$this->form_validation->set_rules('url_universitas','URL Universitas','trim|required');
		$this->form_validation->set_rules('kategori_universitas','Kategori Universitas','required');
		$this->form_validation->set_rules('negara','Negara','required');
		$this->form_validation->set_rules('deskripsi_universitas','Deskripsi Universitas','required');
		$this->form_validation->set_rules('alamat_universitas','Alamat Universitas','required');
		$this->form_validation->set_rules('latitude','Latitude Universitas','required');
		$this->form_validation->set_rules('longitude','Longitude Universitas','required');
		$this->form_validation->set_rules('kategori_universitas','Kategori Universitas','required');$this->form_validation->set_rules('kategori_universitas','Kategori Universitas','required');

		if($this->form_validation->run() == FALSE)
		{
      //jika form tidak lengkap maka akan dikembalikan ke route "akunAdminR"
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
			$latitude=$this->input->post('latitude');
			$longitude=$this->input->post('longitude');
			$email=$this->input->post('email');
			$no_telp=$this->input->post('no_telp');

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

			$result = $this->UniversitasM->insert($dataUniv);



			$max_id = $this->db->query("SELECT MAX(id_universitas) as id_universitas FROM universitas");

			foreach ($max_id->result_array() as $max) {

				$dataDetailUniv= array(
					"id_universitas"=>$max['id_universitas'],
					"deskripsi_universitas"=>$deskripsi_universitas,
					"alamat_universitas"=>$alamat_universitas,
					"latitude"=>$latitude,
					"longitude"=>$longitude,
					"email"=>$email,
					"no_telp"=>$no_telp
				
			);
				
				$dataIdUniv = array(
					"id_universitas" => $max['id_universitas']

				);


				$result = $this->db->insert('detail_universitas', $dataDetailUniv);

				$result = $this->db->insert('univ_fak',$dataIdUniv);

        //jika id userrole == 2 maka dia juga sekaligus menambahkan pada tabel dosen

			}
		}
		if($result > 0)
		{
			$this->session->set_flashdata('success', 'Data berhasil ditambah');
		}
		else
		{
			$this->session->set_flashdata('error', 'Data gagal ditambah');
		} 

      // }
		redirect('AdminC/get_universitas');
	}


	public function edit_universitas(){
		//get id univ yang ingin di edit
		$id_universitas = $this->input->post('id_universitas');
		$id_detail_universitas = $this->input->post('id_detail_universitas');


		
		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama_universitas','Nama Universitas','trim|required');
		$this->form_validation->set_rules('url_universitas','URL Universitas','trim|required');
		$this->form_validation->set_rules('kategori_universitas','Kategori Universitas','required');
		$this->form_validation->set_rules('negara','Negara','required');
		$this->form_validation->set_rules('deskripsi_universitas','Deskripsi Universitas','required');
		$this->form_validation->set_rules('alamat_universitas','Alamat Universitas','required');
		$this->form_validation->set_rules('latitude','Latitude Universitas','required');
		$this->form_validation->set_rules('longitude','Longitude Universitas','required');
		$this->form_validation->set_rules('kategori_universitas','Kategori Universitas','required');$this->form_validation->set_rules('kategori_universitas','Kategori Universitas','required');

		if($this->form_validation->run() == FALSE)
		{
      //jika form tidak lengkap maka akan dikembalikan ke route "akunAdminR"
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
			$latitude = $this->input->post('latitude');
			$longitude = $this->input->post('longitude');
			$email = $this->input->post('email');
			$no_telp = $this->input->post('no_telp');

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
					"latitude" => $latitude,
					"longitude" => $longitude,
					"email" => $email,
					"no_telp" => $no_telp

				);

			}else{

				$dataUniversitas =  array(
					"nama_universitas"=>$deskripsi,
					"url_universitas"=>$url,
					"kategori_universitas"=>$kategori,
					"negara"=>$negara,
					"gambar_universitas"=>$pic
				);


				$dataDetailUniversitas = array(
					"deskripsi_universitas" => $deskripsi,
					"alamat_universitas" => $alamat_lengkap,
					"latitude" => $latitude,
					"longitude" => $longitude,
					"email" => $email,
					"no_telp" => $no_telp

				);



			}

			
			$result = $this->UniversitasM->editUniversitas($dataUniversitas, $id_universitas);
			$result = $this->UniversitasM->editDetailUniversitas($dataDetailUniversitas, $id_detail_universitas);
			
			if($result == TRUE)
			{
				$this->session->set_flashdata('success', 'Universitas berhasil diubah');
			}
			else
			{
				$this->session->set_flashdata('error', 'Universitas gagal diubah');
			}	
			
			redirect('AdminC/get_universitas');
		}
	}

	public function hapusUniv($id_univ){

		if($this->UniversitasM->delete_univ($id_univ)){

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


		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama_fakultas','Fakultas','trim|required');

		if($this->form_validation->run() == FALSE){
      //jika form tidak lengkap maka akan dikembalikan ke route "akunAdminR"
			$this->session->set_flashdata('error','Data Belum diisi');
			redirect('AdminC/tampil_admin_fakultas');

		}else {


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
			// print_r($prodi['id_prodi']);
			}
			
			$result = $this->db->insert('fak_univ',$dataDetailFakultas);



			//$nama_pencari= $this->session->userdata['username'];
			// $getIdUniversitas=$this->UniversitasM->get_universitas_id($id_universitas);


			// 	$id_prodi_fk = $this->db->query("SELECT MAX(id_prodi) AS id_prodi FROM prodi");
			// 	foreach ($id_prodi_fk->result_array() as $prodi) {
			// 		$DetailProdi =  array(
			// 			'id_univ_fak' =>$univ_fak['id_univ_fakultas']
			// 		);
			// // print_r($prodi['id_prodi']);
			// 	}

			// }
			// $result = $this->db->insert('fak_prodi',$DetailProdi);


		// 	$id_fak_prodi_fk = $this->db->query("SELECT MAX(id_fak_prodi) AS id_fak_prodi FROM fak_prodi");
		// 		foreach ($id_fak_prodi_fk->result_array() as $fak_prodi) {
		// 	$dataProdi =  array(
		// 			"nama_prodi"=>$nama_prodi,
		// 			"tingkatan"=>$tingkatan,
		// 			"id_fak_prodi"=>$fak_prodi['id_fak_prodi']
		// 		);
		// }

				// $result = $this->ProdiM->insertProdi($dataProdi);

			if($result > 0)
			{
				$this->session->set_flashdata('success', 'Data berhasil ditambah');
			}else{
				$this->session->set_flashdata('error', 'Data gagal ditambah');
			}
		
		}

		
		redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
	}

	public function edit_fakultas(){
		//get id univ yang ingin di edit
		$id_fakultas = $this->input->post('id_fakultas');
		$id_universitas = $this->input->post('id_universitas');

		$fakultas= $this->input->post('nama_fakultas');

		
		
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('nama_fakultas','Kategori Prodi','required');
		
		if($this->form_validation->run() == FALSE)
		{
			//jika form tidak lengkap maka akan dikembalikan ke route "dosenAdminR"
			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);


		}else {

			$dataFakultas =  array(
				"nama_fakultas"=>$fakultas
			);
			$result = $this->FakultasM->editFakultas($dataFakultas, $id_fakultas);
			
			if($result == TRUE)
			{
				$this->session->set_flashdata('success', 'Data berhasil diubah');
			}
			else
			{
				$this->session->set_flashdata('error', 'Data gagal diubah');
			}	

			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);

		}	
	}

	public function hapusFakultas($id_fakultas, $id_universitas){

		if($this->FakultasM->delete_by_id($id_fakultas)){
			redirect('AdminC/tampil_admin_fakultas/'.$id_universitas);
		}

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


