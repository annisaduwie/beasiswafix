<?php if(!defined('BASEPATH'))exit('No direct	script access allowed');	

class PencarianProdi extends CI_Controller		
{	
	public function __construct()	
	{	
		parent::__construct();	
		$this->load->model('ProdiM');
		$this->load->model('KeywordM');
		$this->load->model('PencariM');
		$this->load->model('UniversitasM');
		$this->load->model('PencarianM');
		$this->load->model('FakultasM');
		$this->load->helper('url','form');
		$this->model = $this->PencariM;
		$this->model = $this->FakultasM;
		$this->model = $this->ProdiM;
		$this->model = $this->KeywordM;
		$this->model = $this->UniversitasM;
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

public function tampil_prodi(){



		$action = $_REQUEST['action'];
		
		if($action == "show-all"){
			// jika selected produk get all product
	$stmt=$db->prepare('SELECT distinct nama_fakultas from fakultas');
	$stmt->execute();
}
else{
	// else ambil data berdasarkan merk_id
	$stmt=$db->prepare('SELECT distinct nama_fakultas from universitas, univ_fak, fakultas WHERE universitas.id_universitas = univ_fak.id_universitas AND univ_fak.id_fakultas = fakultas.id_fakultas AND nama_universitas=:id');
	$stmt->execute([
		':id'=>$action
		]);
}




}