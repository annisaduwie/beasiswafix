<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Awal extends CI_Controller  {

	function __construct() {
        parent::__construct();
        $this->load->model('ProdiM');
        $this->load->model('FakultasM');
	 	 $this->load->helper('url','form');
	 	 $this->model = $this->ProdiM;
	 	 $this->model = $this->FakultasM;
    }

	public function index()
	{
		
		$data['prodi']= $this->ProdiM->get_prodi_dropdown()->result();
		$data['list_prodi']= $this->ProdiM->tampil_prodi()->result();
		$data['fakultas'] = $this->FakultasM->tampil_fakultas_limit()->result();

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
