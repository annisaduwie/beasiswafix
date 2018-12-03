<?php if(!defined('BASEPATH'))exit('No direct	script access allowed');	
ini_set('max_execution_time', 0);
ini_set("memory_limit", "1024M");

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


		$this->session->set_userdata('session_id_univ', $id_universitas);

		if ($this->session->flashdata('prodi')) {
			$keyword_tingkatan = $this->session->flashdata('tingkatan');
			$keyword_prodi = $this->session->flashdata('prodi');
			$keyword_kategori = $this->session->flashdata('kategori');
		}

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
        $config['per_page'] = 2;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);


        // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'Pertama';
        $config['last_link']        = 'Terakhir';
        $config['next_link']        = 'Selanjutnya';
        $config['prev_link']        = 'Sebelumnya';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Selanjutnya</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';


        $this->pagination->initialize($config);



        $this->session->set_flashdata('prodi', $keyword_prodi);
        $this->session->set_flashdata('kategori', $keyword_kategori);
        $this->session->set_flashdata('tingkatan', $keyword_tingkatan);


        if ($this->session->userdata('logged_in')){

        	$nama_pencari= $this->session->userdata['username'];
        	$getId=$this->PencariM->getIdPencari($nama_pencari);

            if (isset($_POST["tampil_pencarian"])){

                $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
                $data['univ']= $this->PencarianM->pencarianPage($config["per_page"], $data['page'], $keyword_prodi, $keyword_kategori, $keyword_tingkatan)->result();
                $data['pagination'] = $this->pagination->create_links();


                $this->load->view('pencari/list_univ', $data);


            }else if(isset($_POST["like"])){

                 $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
                $data['univ']= $this->PencarianM->pencarianPage($config["per_page"], $data['page'], $keyword_prodi, $keyword_kategori, $keyword_tingkatan)->result();
                $data['pagination'] = $this->pagination->create_links();


                $this->load->view('pencari/list_univ', $data);

            }else if($cek > 0 ){

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
    		// 'id_univ' => $this->ProdiM->get_univ_prodi($id_fakultas)->row_array(),
            'id_univ' => $this->ProdiM->get_univ_prodi_kosong($id_fakultas)->row_array()
            
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

    		// $id_fakultas_db = $this->db->query("SELECT MAX(id_univ_fak) AS id_univ_fakultas FROM univ_fak");
    		// foreach ($id_fakultas_db->result_array() as $univ_fak) {



		// 	$id_prodi_fk = $this->db->query("SELECT MAX(id_prodi) AS id_prodi FROM prodi");
		// 	foreach ($id_prodi_fk->result_array() as $prodi) {
		// 		$DetailProdi =  array(

		// 			'id_univ_fak' =>$univ_fak['id_univ_fakultas']
		// 		);
		// 	// printer_end_doc(printer_handle)each(w)t_r($prodi['id_prodi']);
		// 	}


		// $result = $this->db->insert('fak_prodi',$DetailProdi);

    		
    			$dataProdi =  array(
    				"nama_prodi"=>$nama_prodi,
    				"tingkatan"=>$tingkatan
    				
    			);
                $result = $this->ProdiM->insertProdi($dataProdi);

                $id_prodi = $this->db->query("SELECT id_prodi from prodi, fakultas WHERE id_fakultas='$id_fakultas'");
                foreach ($id_prodi->result_array() as $fak_prodi) {

                 $dataDetailFakultas =  array(

                 'id_prodi' =>$fak_prodi['id_prodi'],
                 'id_fakultas' =>$id_fakultas
                );

    			}
                $result = $this->db->insert('prodi_fak',$dataDetailFakultas);

    			
    			if($result > 0)
    			{
    				$this->session->set_flashdata('success', 'Data berhasil ditambah');
    			}else{
    				$this->session->set_flashdata('error', 'Data gagal ditambah');
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
     

    	$data['universitas'] = $this->UniversitasM->get_universitas()->result();


    	if ($this->session->userdata('logged_in')){
    		$username = $this->session->userdata('username');
    		$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();

    		$id_pencari=$this->session->userdata['id_pencari'];
    		$cek = $this->FakultasM->cek_tingkatan($id_pencari);

    	if($cek['tingkatan']=='Pelajar'){

		$config['total_rows'] = $this->FakultasM->tampil_fakultas_rows_pelajar()->num_rows();//total row
		$config['base_url'] = site_url('PencarianC/tampil_pencarian_prodi'); //site url
        $config['per_page'] = 5;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);

                // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'Pertama';
        $config['last_link']        = 'Terakhir';
        $config['next_link']        = 'Selanjutnya';
        $config['prev_link']        = 'Sebelumnya';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Selanjutnya</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';

        $this->pagination->initialize($config);

        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        $data['fakultas_pelajar'] = $this->FakultasM->tampil_fakultas_pelajar($config["per_page"], $data['page'])->result();
        $data['pagination_pelajar'] = $this->pagination->create_links();

    }else if($cek['tingkatan'] =='Mahasiswa'){

    	$config['total_rows'] = $this->FakultasM->tampil_fakultas_rows_mahasiswa()->num_rows();
		$config['base_url'] = site_url('PencarianC/tampil_pencarian_prodi'); //site url
        $config['per_page'] = 5;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);

                // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'Pertama';
        $config['last_link']        = 'Terakhir';
        $config['next_link']        = 'Selanjutnya';
        $config['prev_link']        = 'Sebelumnya';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Selanjutnya</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';

        $this->pagination->initialize($config);

        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $data['fakultas_mahasiswa'] = $this->FakultasM->tampil_fakultas_mahasiswa($config["per_page"], $data['page'])->result();

        $data['pagination_mahasiswa'] = $this->pagination->create_links();

    }

}else{


    	$list_universitas = $this->input->post('filter_universitas');
    	$list_negara = $this->input->post('filter_negara');
    	$nama_fakultas = $this->input->post('nama_fakultas');



    	$data['filter_all'] = $this->FakultasM->tampil_fakultas_list_all($list_universitas, $list_negara)->result();
    	$data['nama_fakultas'] = $this->FakultasM->tampil_nama_fakultas()->result();
	// $data['fakultas_univ'] = $this->FakultasM->tampil_fakultas_list_univ_rows($list_universitas)->result();
    	$data['fakultas_negara'] = $this->FakultasM->tampil_fakultas_list_negara($list_negara)->result();
    	$data['list_prodi']= $this->ProdiM->tampil_prodi()->result();
    	$data['jml_prodi']= $this->ProdiM->jumlah_prodi()->row_array();

    	$data['negara'] = $this->UniversitasM->get_negara()->result();

    	$config['total_rows'] = $this->FakultasM->tampil_fakultas_rows()->num_rows();
		 $config['base_url'] = site_url('PencarianC/tampil_pencarian_prodi'); //site url
        $config['per_page'] = 5;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);

                // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'Pertama';
        $config['last_link']        = 'Terakhir';
        $config['next_link']        = 'Selanjutnya';
        $config['prev_link']        = 'Sebelumnya';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Selanjutnya</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';

        $this->pagination->initialize($config);

        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $data['fakultas'] = $this->FakultasM->tampil_fakultas($config["per_page"], $data['page'])->result();

        $data['pagination'] = $this->pagination->create_links();

    }

    $this->load->view('pencari/pencarian_prodi', $data);

}

public function tampil_pencarian_prodi_by_universitas(){

 

    $data['universitas'] = $this->UniversitasM->get_universitas()->result();
    
    $id_universitas = $this->input->post('filter_universitas');
    $data['nama_univ'] = $this->UniversitasM->get_name_by_id($id_universitas)->row_array();


    $this->session->set_userdata('id_univ', $id_universitas);
        

        // $data= array(
        //     'nama_univ' => $nama_universitas
        // );

	if ($this->session->userdata('logged_in')){
        
		$username = $this->session->userdata('username');
		$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
		$id_pencari=$this->session->userdata['id_pencari'];

		$cek = $this->FakultasM->cek_tingkatan($id_pencari);

		if($cek['tingkatan']=='Pelajar'){

			if (isset($_POST["filter_universitas"])) {

               $this->session->set_userdata('id_univ', $id_universitas);

				$config['total_rows'] = $this->FakultasM->tampil_fakultas_rows_pelajar_universitas($id_universitas)->num_rows();//total row
				$config['base_url'] = site_url('PencarianC/tampil_pencarian_prodi_by_universitas'); //site url
		        $config['per_page'] = 1;  //show record per halaman
		        $config["uri_segment"] = 3;  // uri parameter
		        $choice = $config["total_rows"] / $config["per_page"];
		        $config["num_links"] = floor($choice);

		                // Membuat Style pagination untuk BootStrap v4
		        $config['first_link']       = 'Pertama';
		        $config['last_link']        = 'Terakhir';
		        $config['next_link']        = 'Selanjutnya';
		        $config['prev_link']        = 'Sebelumnya';
		        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
		        $config['full_tag_close']   = '</ul></nav></div>';
		        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
		        $config['num_tag_close']    = '</span></li>';
		        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
		        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
		        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
		        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
		        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
		        $config['prev_tagl_close']  = '</span>Selanjutnya</li>';
		        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
		        $config['first_tagl_close'] = '</span></li>';
		        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
		        $config['last_tagl_close']  = '</span></li>';

		        $this->pagination->initialize($config);

                $this->session->flashdata('id_univ');

		        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

		        $data['fakultas_pelajar_universitas'] = $this->FakultasM->tampil_fakultas_pelajar_universitas( $id_universitas, $config["per_page"], $data['page'])->result();
		        $data['pagination_pelajar_universitas'] = $this->pagination->create_links();


    		}
    	}else if($cek['tingkatan'] =='Mahasiswa'){

                

                $username = $this->session->userdata('username');
                $data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
                $id_pencari=$this->session->userdata['id_pencari'];

                $cek = $this->FakultasM->cek_tingkatan($id_pencari);

                $this->session->set_userdata('id_univ', $id_universitas);

				$config['total_rows'] = $this->FakultasM->tampil_fakultas_rows_mahasiswa_universitas($id_universitas)->num_rows();//total row
				$config['base_url'] = site_url('PencarianC/tampil_pencarian_prodi_by_universitas'); //site url
		        $config['per_page'] = 1;  //show record per halaman
		        $config["uri_segment"] = 3;  // uri parameter
		        $choice = $config["total_rows"] / $config["per_page"];
		        $config["num_links"] = floor($choice);

		                // Membuat Style pagination untuk BootStrap v4
		        $config['first_link']       = 'Pertama';
		        $config['last_link']        = 'Terakhir';
		        $config['next_link']        = 'Selanjutnya';
		        $config['prev_link']        = 'Sebelumnya';
		        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
		        $config['full_tag_close']   = '</ul></nav></div>';
		        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
		        $config['num_tag_close']    = '</span></li>';
		        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
		        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
		        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
		        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
		        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
		        $config['prev_tagl_close']  = '</span>Selanjutnya</li>';
		        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
		        $config['first_tagl_close'] = '</span></li>';
		        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
		        $config['last_tagl_close']  = '</span></li>';

		        $this->pagination->initialize($config);

                $this->session->flashdata('id_univ');

		        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

		        $data['fakultas_mahasiswa_universitas'] = $this->FakultasM->tampil_fakultas_mahasiswa_universitas($id_universitas, $config["per_page"], $data['page'])->result();
		        $data['pagination_mahasiswa_universitas'] = $this->pagination->create_links();

    		}
    }else{


        $this->session->set_userdata('id_univ', $id_universitas);
        
		$config['total_rows'] = $this->FakultasM->tampil_fakultas_list_univ_rows($id_universitas)->num_rows();//total row
		$config['base_url'] = site_url('PencarianC/tampil_pencarian_prodi_by_universitas'); //site url
        $config['per_page'] = 5;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);

                // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'Pertama';
        $config['last_link']        = 'Terakhir';
        $config['next_link']        = 'Selanjutnya';
        $config['prev_link']        = 'Sebelumnya';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Selanjutnya</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';

        $this->pagination->initialize($config);
        $this->session->flashdata('id_univ');

        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        $data['fakultas_universitas'] = $this->FakultasM->tampil_fakultas_list_univ_page( $config["per_page"], $data['page'], $id_universitas)->result();
        $data['pagination_universitas'] = $this->pagination->create_links();

	}

    $this->load->view('pencari/pencarian_prodi_universitas', $data);
        
}


public function detail_pencarian(){

	$keyword_prodi=$this->input->post('keyword_prodi');
	$keyword_kategori=$this->input->post('keyword_kategori');
	$keyword_tingkatan=$this->input->post('keyword_tingkatan');

	$cek = $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan)->num_rows();

	$id_univ = $this->input->post('id_universitas');
    $nama_univ = $this->input->post('nama_univ');

	$data['list_detail'] = $this->UniversitasM->tampil_detail_univ($nama_univ)->result();
	$data['fakultas'] = $this->FakultasM->tampil_fakultas_list_univ($id_univ)->result();



	// 	foreach ($list_detail as $list_detail_univ) {

	// 	$data = array(
	// 				'nama_univ' => $list_detail_univ->nama_universitas,
	// 				'gambar_univ' => $list_detail_univ->gambar_universitas,
	// 				'negara' => $list_detail_univ->negara
	// 			);
	// }

	if ($this->session->userdata('logged_in')){
         $id_pencari = $this->session->userdata['id_pencari'];


		$getidkey=get_idpencarian();

			// $data=array(
			// 	"keyword"=>$this->PencarianM->get_pencarian_by_id($getidkey)->row_array(),
			// // "list_univ"=>$this->PencarianM->pencarian($keyword_prodi, $keyword_kategori)->row_array()
			// );


		// 	// print_r($nama_univ);
		$id_univ= $this->UniversitasM->get_id_by_name($nama_univ)->result();
		foreach ($id_univ as $univ) {
			$max_id = $this->db->query("SELECT MAX(id_pencarian) as id_pencarian FROM pencarian WHERE id_pencari='$id_pencari'");

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
	$nama_univ=$this->input->post('nama_univ');
	$keyword_prodi=$this->input->post('keyword_prodi');
	$keyword_kategori=$this->input->post('keyword_kategori');
	$keyword_tingkatan=$this->input->post('keyword_tingkatan');
	$cek = $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan)->num_rows();	

	$this->session->set_flashdata('prodi', $keyword_prodi);
	$this->session->set_flashdata('kategori', $keyword_kategori);
	$this->session->set_flashdata('tingkatan', $keyword_tingkatan);

	if ($this->session->userdata('logged_in')){

		$this->session->set_flashdata('prodi', $keyword_prodi);
		$this->session->set_flashdata('kategori', $keyword_kategori);
		$this->session->set_flashdata('tingkatan', $keyword_tingkatan);


		$nama_pencari= $this->session->userdata['username'];
		$getId=$this->PencariM->getIdPencari($nama_pencari);
		$id_univ= $this->UniversitasM->get_id_by_name($nama_univ)->result();

		foreach ($id_univ as $univ) {
			$data =  array(
				"id_pencari"=>$this->session->userdata['id_pencari'],
				"id_universitas"=>$univ->id_universitas
			);
			$result = $this->db->insert('pencarian_favorit',$data);

		}
		redirect('PencarianC/getPencarian');

	}else{

		redirect('PencarianC/getPencarian');

	}

}

public function tambah_favorit_from_fakultas(){

	$nama_univ=$this->input->post('nama_univ');
	$nama_fakultas = $this->input->post('nama_fakultas');
	$id_universitas=$this->input->post('id_universitas');

	$this->session->set_flashdata('nama_fakultas', $nama_fakultas);
    $this->session->set_flashdata('nama_univ', $nama_univ);

	if ($this->session->userdata('logged_in')){

        $this->session->set_flashdata('nama_fakultas', $nama_fakultas);
        $this->session->set_flashdata('nama_univ', $nama_univ);



		$nama_pencari= $this->session->userdata['username'];
		$getId=$this->PencariM->getIdPencari($nama_pencari);
		$id_univ= $this->UniversitasM->get_id_by_name($nama_univ)->result();

		foreach ($id_univ as $univ) {
			$data =  array(
				"id_pencari"=>$this->session->userdata['id_pencari'],
				"id_universitas"=>$univ->id_universitas
			);
			$result = $this->db->insert('pencarian_favorit',$data);

		}

		redirect('PencarianC/pencarian_univ_berdasar_fakultas');

	}else{

		redirect('PencarianC/pencarian_univ_berdasar_fakultas');

	}

}

public function hapus_favorit($id_pencarian_favorit, $id_pencari){
    $data['id_pencari']= $this->session->userdata('id_pencari');
	if($this->PencarianM->hapus_favorit($id_pencarian_favorit, $id_pencari)){
		redirect('Pencari/tampil_favorit', $data);
	}
}
public function hapus_favorit_list_univ($id_pencarian_favorit, $id_pencari){

	$nama_univ=$this->input->post('nama_univ');
	$keyword_prodi=$this->input->post('keyword_prodi');
	$keyword_kategori=$this->input->post('keyword_kategori');
	$keyword_tingkatan=$this->input->post('keyword_tingkatan');
	$cek = $this->PencarianM->pencarian($keyword_prodi, $keyword_kategori, $keyword_tingkatan)->num_rows();	

	$this->session->set_flashdata('prodi', $keyword_prodi);
	$this->session->set_flashdata('kategori', $keyword_kategori);
	$this->session->set_flashdata('tingkatan', $keyword_tingkatan);

	if ($this->session->userdata('logged_in')){

		$this->session->set_flashdata('prodi', $keyword_prodi);
		$this->session->set_flashdata('kategori', $keyword_kategori);
		$this->session->set_flashdata('tingkatan', $keyword_tingkatan);


		$nama_pencari= $this->session->userdata['username'];
		$getId=$this->PencariM->getIdPencari($nama_pencari);
		$id_univ= $this->UniversitasM->get_id_by_name($nama_univ)->result();

        $data['id_pencari']= $this->session->userdata('id_pencari');
        if($this->PencarianM->hapus_favorit($id_pencarian_favorit, $id_pencari)){

        redirect('PencarianC/getPencarian', $data);
        }
	}

		
	
}

public function hapus_favorit_list_univ_fakultas($id){

	$nama_univ=$this->input->post('nama_univ');
	$nama_fakultas=$this->input->post('nama_fakultas');

	$this->session->set_flashdata('nama_fakultas', $nama_fakultas);

	if ($this->session->userdata('logged_in')){

		$this->session->set_flashdata('nama_fakultas', $nama_fakultas);


		$nama_pencari= $this->session->userdata['username'];
		$getId=$this->PencariM->getIdPencari($nama_pencari);
		$id_univ= $this->UniversitasM->get_id_by_name($nama_univ)->result();

	}

	if($this->PencarianM->hapus_favorit($id)){
		redirect('PencarianC/pencarian_univ_berdasar_fakultas');
	}
}



public function pencarian_berdasar_prodi(){
	$nama_fakultas=$this->input->post('nama_fakultas');
	$data['nama_prodi']= $this->FakultasM->prodi_berdasar_fak($nama_fakultas)->result();
	$this->load->view('pencari/pencarian_prodi', $data);
}

public function pencarian_univ_berdasar_fakultas(){

	$nama_fakultas = $this->input->post('nama_fakultas');
	$id_universitas=$this->input->post('id_universitas');

	$this->session->set_userdata('session_id_univ', $id_universitas);

	if ($this->session->flashdata('nama_fakultas')) {
		$nama_fakultas = $this->session->flashdata('nama_fakultas');
	}

	$data=array(
		'nama_fakultas'=> $nama_fakultas
	);

    if ($this->session->userdata('logged_in')){
        
        $username = $this->session->userdata('username');
        $data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();

	 //konfigurasi pagination
        $config['base_url'] = site_url('PencarianC/pencarian_univ_berdasar_fakultas'); //site url
        $config['total_rows'] = $this->PencarianM->pencarian_univ_berdasar_fakultas($nama_fakultas)->num_rows();//total row
        $config['per_page'] = 1;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);


        // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'Pertama';
        $config['last_link']        = 'Terakhir';
        $config['next_link']        = 'Selanjutnya';
        $config['prev_link']        = 'Sebelumnya';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Selanjutnya</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';


        $this->pagination->initialize($config);

        $this->session->set_flashdata('nama_fakultas', $nama_fakultas);


        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        $data['list_univ_by_fakultas']=$this->PencarianM->pencarian_univ_berdasar_fakultas_pages($config["per_page"], $data['page'], $nama_fakultas)->result();
        $data['pagination'] = $this->pagination->create_links();

    }else{

        $config['base_url'] = site_url('PencarianC/pencarian_univ_berdasar_fakultas'); //site url
        $config['total_rows'] = $this->PencarianM->pencarian_univ_berdasar_fakultas($nama_fakultas)->num_rows();//total row
        $config['per_page'] = 1;  //show record per halaman
        $config["uri_segment"] = 3;  // uri parameter
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = floor($choice);


        // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'Pertama';
        $config['last_link']        = 'Terakhir';
        $config['next_link']        = 'Selanjutnya';
        $config['prev_link']        = 'Sebelumnya';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Selanjutnya</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';


        $this->pagination->initialize($config);

        $this->session->set_flashdata('nama_fakultas', $nama_fakultas);


        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        $data['list_univ_by_fakultas']=$this->PencarianM->pencarian_univ_berdasar_fakultas_pages($config["per_page"], $data['page'], $nama_fakultas)->result();
        $data['pagination'] = $this->pagination->create_links();
    }

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