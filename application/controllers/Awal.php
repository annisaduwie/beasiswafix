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

		$keyword_kategori = $this->input->post('keyword_kategori');
		$data['kategori'] = $this->ProdiM->kategori();
		if($this->session->userdata('logged_in')){
		// menampilkan fakultas untuk pencari berstatus pelajar
		$data['fakultas_pelajar'] = $this->FakultasM->tampil_fakultas_pelajar_limit()->result();
		// menampilkan fakultas untuk pencari berstatus mahasiswa
		$data['fakultas_mahasiswa'] = $this->FakultasM->tampil_fakultas_mahasiswa_limit()->result();
		$data['fakultas_umum'] = $this->FakultasM->tampil_fakultas_limit()->result();
		}else{
		// menampilkan fakultas untuk pencari umum
		$data['fakultas'] = $this->FakultasM->tampil_fakultas_limit()->result();
		}
		//mengambil session id_pencari
		$data['nama_pencari']= $this->session->userdata('id_pencari');
		$this->load->view('pencari/user', $data);	
	}

	public function dropdown_mhs()
	{
		$keyword_kategori = $this->input->post('keyword_kategori');
		// menampilkan prodi untuk pencari berstatus mahasiswa
		$data = $this->ProdiM->get_prodi_dropdown_mahasiswa($keyword_kategori)->result();
		echo json_encode($data);
	}
	public function dropdown_pjr()
	{
		$keyword_kategori = $this->input->post('keyword_kategori');
		// menampilkan prodi untuk pencari berstatus pelajar
		$data= $this->ProdiM->get_prodi_dropdown_pelajar($keyword_kategori)->result();
		echo json_encode($data);
	}
	public function dropdown_umum()
	{
		$keyword_kategori = $this->input->post('keyword_kategori');
		// menampilkan prodi untuk pencari umum
		$data= $this->ProdiM->get_prodi_dropdown($keyword_kategori)->result();
		echo json_encode($data);
	}

	public function tampil_user_prodi(){
	//menampilkan list daftar program studi
	$data['prodi']= $this->ProdiM->get_prodi()->result();
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
