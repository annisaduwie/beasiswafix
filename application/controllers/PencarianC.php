<?php if(!defined('BASEPATH'))exit('No direct	script access allowed');	

class PencarianC extends CI_Controller		
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
		$this->load->library('pagination');

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
		header('Cache-Control: no-cache, must-revalidate, max-age=0');
		header('Cache-Control: post-check=0, pre-check=0', false);
	}

	var $data= array();

	public function index(){
		
	}
	

	public function getPencarian(){
		$id_universitas=$this->input->post('id_universitas');
		$keyword_prodi=$this->input->post('keyword_prodi');
		$keyword_kategori=$this->input->post('keyword_kategori');
		$keyword_tingkatan=$this->input->post('keyword_tingkatan');

		$data =  array(

			"keyword_prodi"=>$keyword_prodi,
			"keyword_kategori"=>$keyword_kategori,
			"keyword_tingkatan"=>$keyword_tingkatan
		);


		$cek = $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan)->num_rows();	

		$getidkey=get_idpencarian();



        //konfigurasi pagination
        $config['base_url'] = site_url('PencarianC/getPencarian'); //site url
        $config['total_rows'] = $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan)->num_rows();//total row
        $config['per_page'] = 1;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);


        // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'First';
        $config['last_link']        = 'Last';
        $config['next_link']        = 'Next';
        $config['prev_link']        = 'Prev';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Next</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';


        $this->pagination->initialize($config);






		if ($this->session->userdata('logged_in')){

			$nama_pencari= $this->session->userdata['username'];
			$getId=$this->PencariM->getIdPencari($nama_pencari);

			if($cek > 0 ){
	

        $dataPencarian =  array(

        	"keyword_prodi"=>$keyword_prodi,
        	"keyword_kategori"=>$keyword_kategori,
        	"keyword_tingkatan"=>$keyword_tingkatan,
        	"id_pencari"=>$this->session->userdata['id_pencari']
        );
        $this->PencarianM->insertPencarian($dataPencarian);
        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $data['univ']= $this->PencarianM->pencarianPage($config["per_page"], $data['page'], $keyword_prodi, $keyword_kategori, $keyword_tingkatan)->result();
        $data['pagination'] = $this->pagination->create_links();


        $this->load->view('pencari/list_univ', $data);


		// redirect('PencarianC/get_keyword/'.$getidkey.'/'.$keyword_prodi.'/'.$keyword_kategori);

    }else{
    	$this->load->view('pencari/list_univ_empty',$data);
    }

}else{                                                                                                                                                 

	if($cek > 0 ){
		 $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
		$data['univ']= $this->PencarianM->pencarianPage($config["per_page"], $data['page'], $keyword_prodi, $keyword_kategori, $keyword_tingkatan)->result();
		$data['pagination'] = $this->pagination->create_links();


		$this->load->view('pencari/list_univ',$data);
		// redirect('PencarianC/get_keyword/'.$getidkey.'/'.$keyword_prodi.'/'.$keyword_kategori);

	}else{
		$this->load->view('pencari/list_univ_empty',$data);
	}
}

}



	// public function get_keyword($getidkey,$keyword_prodi,$keyword_kategori){

	// 	// $getidkey=get_idpencarian();
 //  		// $id_pencari = $this->session->userdata['id_pencari'];
 //  		// $keyword_prodi=$this->input->post('keyword_prodi');
 //    	// $keyword_kategori=$this->input->post('keyword_kategori');
	// 	//$keyword_tingkatan=$this->input->post('keyword_tingkatan');
	// 	// $keyword_tingkatan=$this->input->post('keyword_tingkatan');

 //  	// $data['list_keyword']= $this->KeywordM->get_keyword_login($id_pencari)->result();
	// 	$data=array(
	// 		"keyword"=>$this->PencarianM->get_pencarian_by_id($getidkey)->row_array(),
	// 		// "list_univ"=>$this->PencarianM->pencarian($keyword_prodi, $keyword_kategori)->row_array()
	// 	);
	// 	$data['univ']= $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori)->result();

 //  	// $getkeyword=$this->KeywordM	->get_key($getidkey)->result_array();
	// 	$this->load->view('pencari/list_univ',$data);

	// }


public function tampil_admin_prodi($id_fakultas){
	// print_r($id_universitas);
	$id_universitas = $this->input->post('id_universitas');

	$data = array(
		'id' => $id_fakultas,
		'nama_fakultas' => $this->FakultasM->get_full_fakultas($id_fakultas)->row_array(),
		'id_univ' => $this->ProdiM->get_univ_prodi($id_fakultas)->row_array()
	);
	$data['prodi']= $this->ProdiM->get_prodi($id_fakultas)->result();
		// $data['prodi_back']= $this->ProdiM->get_univ_prodi($id_fakultas)->row_array();


	$this->load->view('admin/kelola_prodi', $data);

}





public function tambah_prodi(){

	$id_fakultas = $this->input->post('id_fakultas');
	$nama_prodi = $this->input->post('nama_prodi');
	$tingkatan = $this->input->post('tingkatan');

	$cekProdi =$this->ProdiM->cekNamaProdi('prodi', $nama_prodi);

	$this->load->library('form_validation');
	$this->form_validation->set_rules('nama_prodi','Nama Prodi','trim|required');
	$this->form_validation->set_rules('tingkatan','Tingkatan','trim|required');

	if($this->form_validation->run() == FALSE){
      //jika form tidak lengkap maka akan dikembalikan ke route "akunAdminR"
		$this->session->set_flashdata('error','Data Belum diisi');
		redirect('PencarianC/tampil_admin_prodi');

	}else {

		$id_fakultas_db = $this->db->query("SELECT MAX(id_univ_fak) AS id_univ_fakultas FROM univ_fak");
		foreach ($id_fakultas_db->result_array() as $univ_fak) {



		// 	$id_prodi_fk = $this->db->query("SELECT MAX(id_prodi) AS id_prodi FROM prodi");
		// 	foreach ($id_prodi_fk->result_array() as $prodi) {
		// 		$DetailProdi =  array(

		// 			'id_univ_fak' =>$univ_fak['id_univ_fakultas']
		// 		);
		// 	// printer_end_doc(printer_handle)each(w)t_r($prodi['id_prodi']);
		// 	}
		 

		// $result = $this->db->insert('fak_prodi',$DetailProdi);

		$id_fak_prodi_fk = $this->db->query("SELECT id_fak_prodi from univ_fak, fakultas, fak_prodi WHERE univ_fak.id_univ_fak=fakultas.id_univ_fak AND univ_fak.id_univ_fak=fak_prodi.id_univ_fak AND id_fakultas='$id_fakultas'");
		foreach ($id_fak_prodi_fk->result_array() as $fak_prodi) {
			$dataProdi =  array(
				"nama_prodi"=>$nama_prodi,
				"tingkatan"=>$tingkatan,
				"id_fak_prodi"=>$fak_prodi['id_fak_prodi']
			);
		}

		$result = $this->ProdiM->insertProdi($dataProdi);
		if($result > 0)
		{
			$this->session->set_flashdata('success', 'Data berhasil ditambah');
		}else{
			$this->session->set_flashdata('error', 'Data gagal ditambah');
		}

	}
}
	redirect('PencarianC/tampil_admin_prodi/'.$id_fakultas);
}


public function edit_prodi(){
		//get id univ yang ingin di edit
	$id_prodi = $this->input->post('id_prodi');
	$id_fakultas = $this->input->post('id_fakultas');

	$nama_prodi = $this->input->post('nama_prodi');
	$fakultas= $this->input->post('fakultas');
	$tingkatan = $this->input->post('tingkatan');



	$this->load->library('form_validation');

	$this->form_validation->set_rules('nama_prodi','Nama','required');
	$this->form_validation->set_rules('tingkatan','Tingkatan','required');

	if($this->form_validation->run() == FALSE)
	{
			//jika form tidak lengkap maka akan dikembalikan ke route "dosenAdminR"
		redirect('PencarianC/tampil_admin_prodi/'.$id_fakultas);


	}else {

		$dataProdi =  array(
			"nama_prodi"=>$nama_prodi,
			"tingkatan"=>$tingkatan
		);
		$result = $this->ProdiM->editProdi($dataProdi, $id_prodi);

		if($result == TRUE)
		{
			$this->session->set_flashdata('success', 'Data berhasil diubah');
		}
		else
		{
			$this->session->set_flashdata('error', 'Data gagal diubah');
		}	

		redirect('PencarianC/tampil_admin_prodi/'.$id_fakultas);

	}	
}

function deleteProdi($id_prodi, $id_fakultas){
		// $id_fakultas = $this->input->post('id_fakultas');
		// print_r($id_fakultas);
	if($this->ProdiM->delete_by_id($id_prodi)){
		redirect('PencarianC/tampil_admin_prodi/'.$id_fakultas);
	}
}

function simpanKeyword(){

			// $program_studi = $this->input->post('keyword_prodi');
			// $kategori = $this->input->post('keyword_kategori');
			// $tingkatan= $this->input->post('keyword_tingkatan');


	$keyword_prodi=$this->input->post('keyword_prodi');
	$keyword_kategori=$this->input->post('keyword_kategori');
	$keyword_tingkatan=$this->input->post('keyword_tingkatan');
	$cek = $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan)->num_rows();	

	if ($this->session->userdata('logged_in')){

		$nama_pencari= $this->session->userdata['username'];
		$getId=$this->PencariM->getIdPencari($nama_pencari);

		$dataPencarian =  array(

			"keyword_prodi"=>$keyword_prodi,
			"keyword_kategori"=>$keyword_kategori,
			"keyword_tingkatan"=>$keyword_tingkatan,
			"waktu_pencarian"=>date("Y-m-d H:i:s"),
			"id_pencari"=>$this->session->userdata['id_pencari']
		);
		$this->PencarianM->insertPencarian($dataPencarian);
		$detail_pencarian =array(

		);
		$getidkey=get_idpencarian();

		$data=array(
			"keyword"=>$this->PencarianM->get_pencarian_by_id($getidkey)->row_array(),
			// "list_univ"=>$this->PencarianM->pencarian($keyword_prodi, $keyword_kategori)->row_array()
		);

		$data['body'] = $this->load->view('pencari/list_univ',$data, true);


  	// $getkeyword=$this->KeywordM	->get_key($getidkey)->result_array();
		// $this->load->view('pencari/list_univ',$data);

		// $dataKey=array(
		// 	"keyword_prodi" => $keyword_prodi,
		// 	"keyword_kategori" => $keyword_kategori,
		// 	"keyword_tingkatan" => $keyword_tingkatan
		// 	// "list_univ"=>$this->PencarianM->pencarian($keyword_prodi, $keyword_kategori)->row_array()
		// );


		if($cek > 0 ){

			$data['univ']= $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan)->result();
			$this->load->view('pencari/list_univ',$data);
		// redirect('PencarianC/get_keyword/'.$getidkey.'/'.$keyword_prodi.'/'.$keyword_kategori);

		}else{
			$this->load->view('pencari/list_univ_empty',$data);
		}


	}else{

		$getidkey=get_idpencarian();

		$data=array(
			"keyword_prodi" => $keyword_prodi,
			"keyword_kategori" => $keyword_kategori,
			"keyword_tingkatan" => $keyword_tingkatan
			// "list_univ"=>$this->PencarianM->pencarian($keyword_prodi, $keyword_kategori)->row_array()
		);

		if($cek > 0 ){

			$data['univ']= $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan)->result();
			$this->load->view('pencari/list_univ',$data);
		// redirect('PencarianC/get_keyword/'.$getidkey.'/'.$keyword_prodi.'/'.$keyword_kategori);

		}else{
			$this->load->view('pencari/list_univ_empty',$data);
		}

	}
}

public function tampil_pencarian_prodi(){

	$list_universitas = $this->input->post('filter_universitas');
	$list_negara = $this->input->post('filter_negara');


	 //konfigurasi pagination
        $config['base_url'] = site_url('PencarianC/tampil_pencarian_prodi'); //site url
        $config['total_rows'] = $this->FakultasM->tampil_fakultas_rows()->num_rows();//total row
        $config['per_page'] = 5;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);

                // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'First';
        $config['last_link']        = 'Last';
        $config['next_link']        = 'Next';
        $config['prev_link']        = 'Prev';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Next</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';


        $this->pagination->initialize($config);

        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        $data['pagination'] = $this->pagination->create_links();



// $data['value_universitas'] = $this->UniversitasM->get_universitas()->result();
// $data['value_negara'] = $this->UniversitasM->get_negara()->result();
// $data['filter_universitas'] = $this->PencarianM->filter_fakultas_by_universitas($list_universitas)->result();

	$data['filter_all'] = $this->FakultasM->tampil_fakultas_list_all($list_universitas, $list_negara)->result();

	$data['fakultas'] = $this->FakultasM->tampil_fakultas($config["per_page"], $data['page'])->result();
	$data['nama_fakultas'] = $this->FakultasM->tampil_nama_fakultas()->result();
	$data['fakultas_univ'] = $this->FakultasM->tampil_fakultas_list_univ($list_universitas)->result();
	$data['fakultas_negara'] = $this->FakultasM->tampil_fakultas_list_negara($list_negara)->result();


	$data['list_prodi']= $this->ProdiM->tampil_prodi()->result();
	$data['jml_prodi']= $this->ProdiM->jumlah_prodi()->row_array();
	$data['universitas'] = $this->UniversitasM->get_universitas()->result();
	$data['negara'] = $this->UniversitasM->get_negara()->result();

// $this->load->view('pencari/pencarian_prodi', $data);





	$this->load->view('pencari/pencarian_prodi', $data);

}

public function detail_pencarian(){

	$keyword_prodi=$this->input->post('keyword_prodi');
	$keyword_kategori=$this->input->post('keyword_kategori');
	$keyword_tingkatan=$this->input->post('keyword_tingkatan');
	$cek = $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan)->num_rows();

	$nama_univ = $_POST['nama_univ'];

	$data['list_detail'] = $this->UniversitasM->tampil_detail_univ($nama_univ)->result();
	$data['fakultas'] = $this->FakultasM->tampil_fakultas_list_univ($nama_univ)->result();

	// 	foreach ($list_detail as $list_detail_univ) {

	// 	$data = array(
	// 				'nama_univ' => $list_detail_univ->nama_universitas,
	// 				'gambar_univ' => $list_detail_univ->gambar_universitas,
	// 				'negara' => $list_detail_univ->negara
	// 			);
	// }

	if ($this->session->userdata('logged_in')){


		$getidkey=get_idpencarian();

			// $data=array(
			// 	"keyword"=>$this->PencarianM->get_pencarian_by_id($getidkey)->row_array(),
			// // "list_univ"=>$this->PencarianM->pencarian($keyword_prodi, $keyword_kategori)->row_array()
			// );


		// 	// print_r($nama_univ);
		$id_univ= $this->UniversitasM->get_id_by_name($nama_univ)->result();
		foreach ($id_univ as $univ) {
			$max_id = $this->db->query("SELECT MAX(id_pencarian) as id_pencarian FROM pencarian");

			foreach ($max_id->result_array() as $max) {
				// print_r($max['id_pencarian']); 
				// print_r($univ->id_universitas);
				$dataUniv = array(
					"id_universitas" => $univ->id_universitas,
					"id_pencarian" => $max['id_pencarian']

				);



				$result = $this->db->insert('detail_pencarian',$dataUniv);

			}
		}

		$this->load->view('pencari/detail', $data);

	}else{

		$this->load->view('pencari/detail', $data);
	}



}

public function tambah_favorit(){

	$keyword_prodi=$this->input->post('keyword_prodi');
	$keyword_kategori=$this->input->post('keyword_kategori');
	$keyword_tingkatan=$this->input->post('keyword_tingkatan');
	$cek = $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan)->num_rows();	


	if ($this->session->userdata('logged_in')){

		$nama_pencari= $this->session->userdata['username'];
		$getId=$this->PencariM->getIdPencari($nama_pencari);
		$id_univ= $this->UniversitasM->get_id_by_name($nama_univ)->result();

		foreach ($id_univ as $univ) {
			$data =  array(
				"id_pencari"=>$this->session->userdata['id_pencari'],
				"id_universitas"=>$univ->id_universitas
			);
			$result = $this->db->insert('pencarian_favorit',$data);

			return $result;


		}
		redirect('PencarianC/getPencarian');

	}else{

		redirect('PencarianC/getPencarian');

	}

}

public function tampil_favorit(){
	$username = $this->session->userdata('username');
	$id_pencari=$this->session->userdata['id_pencari'];

	$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
	$data['list_favorit']= $this->PencarianM->tampil_favorit($id_pencari)->result();

	$this->load->view('pencari/pencarian_favorit', $data);

}

public function hapus_favorit($id){

	if($this->PencarianM->hapus_favorit($id)){
		redirect('PencarianC/tampil_favorit');
	}
}

public function pencarian_berdasar_prodi(){
	$nama_fakultas=$this->input->post('nama_fakultas');
	$data['nama_prodi']= $this->FakultasM->prodi_berdasar_fak($nama_fakultas)->result();
	$this->load->view('pencari/pencarian_prodi', $data);
}
public function pencarian_univ_berdasar_fakultas(){

	$nama_fakultas = $this->input->post('nama_fakultas');

	 //konfigurasi pagination
        $config['base_url'] = site_url('PencarianC/getPencarian'); //site url
        $config['total_rows'] = $this->PencarianM->pencarian_univ_berdasar_fakultas($nama_fakultas)->num_rows();//total row
        $config['per_page'] = 1;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);


        // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'First';
        $config['last_link']        = 'Last';
        $config['next_link']        = 'Next';
        $config['prev_link']        = 'Prev';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Next</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';


        $this->pagination->initialize($config);

        

        



	$data=array(
		'nama_fakultas'=>$nama_fakultas
	);

	$data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

	$data['list_univ_by_fakultas']=$this->PencarianM->pencarian_univ_berdasar_fakultas_pages($config["per_page"], $data['page'], $nama_fakultas)->result();
	$data['pagination'] = $this->pagination->create_links();
	$this->load->view('pencari/list_univ_berdasar_prodi', $data);
}





// $this->load->view('pencari/detail');








// $data['filter_universitas'] = $this->ProdiM->filter_fakultas_by_universitas($filter_universitas)->result();




// foreach ($fakultas->result_array() as $list_fakultas) {


// 			print_r($list_fakultas['nama_fakultas']);
// 			}

	// $getidkey=get_idpencarian();

		// $data=array(
		// 	"keyword_prodi" => $keyword_prodi,
		// 	"keyword_kategori" => $keyword_kategori,
		// 	"keyword_tingkatan" => $keyword_tingkatan
		// 	// "list_univ"=>$this->PencarianM->pencarian($keyword_prodi, $keyword_kategori)->row_array()
		// );

	// $data=array(
	// 		"list_prodi"=>$this->ProdiM->tampil_prodi()->result_array(),
	// 		'list_jumlah'=>$this->ProdiM->jumlah_prodi()->result_array(),
	// 		'list_nama'=>$this->ProdiM->nama_prodi()->result_array()
	// 		// "list_univ"=>$this->PencarianM->pencarian($keyword_prodi, $keyword_kategori)->row_array()
	// 	);

	// $data['list_prodi']= $this->ProdiM->tampil_prodi()->result();



			//$data['list_jumlah']=$this->ProdiM->jumlah_prodi()->result();


		// $this->load->view('pencari/pencarian_prodi', $data);

}