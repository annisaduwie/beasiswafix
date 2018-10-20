<?php if(!defined('BASEPATH'))exit('No direct	script access allowed');	

class UniversitasC extends CI_Controller		
{	
	 public function __construct()	
	 {	
	 	 parent::__construct();	
	 	 $this->load->model('UniversitasM');
	 	 $this->load->helper('url','form');
	 	 $this->model = $this->UniversitasM;
	 	 // $peran=$this->session->userdata('peran');\
        // if($peran!="admin"){
        //  redirect('LoginC');
        //  }
	 	 // $this->load->model('TemplateM');	
	 }

var $data= array();

	public function index(){

		

}
public function get_universitas(){
	$data['universitas']= $this->UniversitasM->get_universitas()->result();

		$this->load->view('admin/kelola_universitas', $data);

}
public function edit_universitas(){

	

	}

}