<?php if(!defined('BASEPATH'))exit('No direct	script access allowed');	

class Pencarian_BeasiswaC extends CI_Controller		
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
		$this->load->model('BeasiswaM');
		$this->load->helper('url','form');
		$this->model = $this->PencariM;
		$this->model = $this->FakultasM;
		$this->model = $this->ProdiM;
		$this->model = $this->KeywordM;
		$this->model = $this->UniversitasM;
		$this->model = $this->PencarianM;
		$this->model = $this->BeasiswaM;
	 	 // $peran=$this->session->userdata('peran');\
        // if($peran!="admin"){
        //  redirect('LoginC');
        //  }
	 	 // $this->load->model('TemplateM');	
		header('Cache-Control: no-cache, must-revalidate, max-age=0');
		header('Cache-Control: post-check=0, pre-check=0', false);
	}

	public function index(){

	}

	public function get_beasiswa(){
		if ($this->session->userdata('logged_in')){
		$data['beasiswa_univ']=$this->BeasiswaM->beasiswa_univ()->result();
		$this->load->view('pencari/pencarian_beasiswa', $data);
	}else{
		redirect('Login');
	}
	
	}

	public function pencarian_beasiswa(){
		$keyword_universitas=$this->input->post('keyword_universitas');


		$cek=$this->BeasiswaM->pencarian_beasiswa($keyword_universitas, $keyword_tingkatan)->num_rows();

		$data =  array(
				"keyword_universitas"=>$keyword_universitas
			);

		if($cek > 0 ){

		$data['pencarian_beasiswa']=$this->BeasiswaM->pencarian_beasiswa($keyword_universitas, $keyword_tingkatan)->result();
		$this->load->view('pencari/detail_pencarian_beasiswa', $data);
	}
		
	}

	public function simpan_pencarian(){
		$keyword_universitas=$this->input->post('keyword_universitas');
		$keyword_tingkatan=$this->input->post('keyword_tingkatan');


		$cek=$this->BeasiswaM->pencarian_beasiswa($keyword_universitas, $keyword_tingkatan)->num_rows();


		if ($this->session->userdata('logged_in')){

			$nama_pencari= $this->session->userdata['username'];
			$getId=$this->PencariM->getIdPencari($nama_pencari);

			if($cek > 0 ){
			$data =  array(
				
				"keyword_universitas"=>$keyword_universitas,
				"id_pencari"=>$this->session->userdata['id_pencari']
			);
			$this->PencarianM->insertPencarian($data);

			$data['pencarian_beasiswa_by_univ']=$this->BeasiswaM->pencarian_beasiswa_by_univ($keyword_universitas)->result();
			$this->load->view('pencari/detail_pencarian_beasiswa_by_univ', $data);

		}
	}
}

	public function pencarian_beasiswa_by_univ(){
		if ($this->session->userdata('logged_in')){
		$keyword_universitas=$this->input->post('nama_univ');

		$cek=$this->BeasiswaM->pencarian_beasiswa_by_univ($keyword_universitas)->num_rows();


		$data =  array(
				"keyword_universitas" => $keyword_universitas
			);


		$data['pencarian_beasiswa_by_univ']=$this->BeasiswaM->pencarian_beasiswa_by_univ($keyword_universitas)->result();
		$this->load->view('pencari/detail_pencarian_beasiswa_by_univ', $data);
	}else{
		redirect("login");
	}

	}
}

