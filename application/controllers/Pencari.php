<?php if(!defined('BASEPATH'))exit('No direct	script access allowed');	

class Pencari extends CI_Controller		
{	
	 public function __construct()	
	 {	
	 	 parent::__construct();	
	 	 $this->load->model('PencariM');
	 	 $this->load->model('PencarianM');
	 	 $this->load->helper('url','form');
	 	 $this->model = $this->PencariM;
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

	$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
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
public function edit_password(){
$username = $this->session->userdata('username');

	$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
	$this->load->view('pencari/ubah_password', $data);
	
}




}