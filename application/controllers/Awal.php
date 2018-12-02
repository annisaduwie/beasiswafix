<?php
defined('BASEPATH') OR exit('No direct script access allowed');

ini_set('max_execution_time', 0);
ini_set("memory_limit", "1024M");
class Awal extends CI_Controller  {

	function __construct() {
        parent::__construct();
        $this->load->model('ProdiM');
        $this->load->model('FakultasM');
        $this->load->model('PencariM');
	 	 $this->load->helper('url','form');
	 	 $this->model = $this->ProdiM;
	 	 $this->model = $this->FakultasM;
	 	 $this->model = $this->PencariM;
    }

	public function index()
	{
		$keyword_kategori = 'Dalam Negeri';
		if($this->session->userdata('logged_in')){

		$data['prodi_pelajar']= $this->ProdiM->get_prodi_dropdown_pelajar()->result();
		$data['prodi_mahasiswa']= $this->ProdiM->get_prodi_dropdown_mahasiswa($keyword_kategori)->result();
		// $data['list_prodi']= $this->ProdiM->tampil_prodi()->result();
		$data['fakultas_pelajar'] = $this->FakultasM->tampil_fakultas_pelajar_limit()->result();

		$data['fakultas_mahasiswa'] = $this->FakultasM->tampil_fakultas_mahasiswa_limit()->result();


		}else{
		$data['prodi']= $this->ProdiM->get_prodi_dropdown()->result();
		$data['fakultas'] = $this->FakultasM->tampil_fakultas_limit()->result();

		}
		
		$data['nama_pencari']= $this->session->userdata('id_pencari');
	
		$this->load->view('pencari/user', $data);
		
	}

	public function keyword_prodi($keyword_kategori){

		$keyword_kategori = 'Dalam Negeri';

		// if($this->session->userdata('logged_in')){
		var_dump($this->session->userdata('logged_in'));
		exit;

		$data['prodi_pelajar']= $this->ProdiM->get_prodi_dropdown_pelajar()->result();
		$data['prodi_mahasiswa']= $this->ProdiM->get_prodi_dropdown_mahasiswa($keyword_kategori);
		// $data['list_prodi']= $this->ProdiM->tampil_prodi()->result();
		$data['fakultas_pelajar'] = $this->FakultasM->tampil_fakultas_pelajar_limit()->result();

		$data['fakultas_mahasiswa'] = $this->FakultasM->tampil_fakultas_mahasiswa_limit()->result();

		 $output   = '<option value=""></option>';

   			 if(! empty($data['prodi_mahasiswa'])){
      			foreach ($data['prodi_mahasiswa']->result() as $row) {
        			$output .='<option value="'.$row->id_prodi.'">'.$row->nama_prodi.'</option>';
      			}
    		 } 
    			echo $output;
  
		// }else{
		$data['prodi']= $this->ProdiM->get_prodi_dropdown()->result();
		$data['fakultas'] = $this->FakultasM->tampil_fakultas_limit()->result();

		// }
		
		$data['nama_pencari']= $this->session->userdata('id_pencari');
	
		$this->load->view('pencari/user', $data);

	}
	public function user()
	{
		//$this->load->view('bendahara/view_kotak');

		
		$this->load->view('pencari/user');
		
	}

	public function tampil_user_prodi(){
		
	$data['prodi']= $this->ProdiM->get_prodi()->result();
	$this->load->view('pencari/user', $data);

}


	public function regispencari(){
		$this->load->view('pencari/register');
	}

	public function login(){
		$this->load->view('pencari/login');
	}
	public function profilPencari(){
		$this->load->view('pencari/profilpencari');
	}
	public function detailpencarian(){
		$this->load->view('pencari/detail');
	}
	public function list_univ(){
		$this->load->view('pencari/list_univ');
	}

	
	public function logout(){
		session_start();
	
		unset($_SESSION['status']);

	 	$this->session->unset_userdata('bendahara');
	 	$this->session->unset_userdata('statusL');	
	 	$this->session->set_flashdata('sukses', 'Terimakasih Telah Menggunakan Aplikasi ini sebagai bendahara');
	 	redirect('Awal');	
	
	}

	public function kelola_pencari()
	{
		$this->load->view('admin/kelola_pencari');
}
	

}
