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
			$username = $this->session->userdata('username');
			$data['beasiswa_univ']=$this->BeasiswaM->beasiswa_univ()->result();
			$data['nama_pencari']= $this->PencariM->get_nama_pencari($username)->row_array();
			$this->load->view('pencari/pencarian_beasiswa', $data);
		}else{
			redirect('Login');
		}

	}

	public function pencarian_beasiswa(){

		$keyword_jenjang=$this->input->post('keyword_jenjang');
		$keyword_kategori=$this->input->post('keyword_kategori_beasiswa');
		$keyword_negara= $this->input->post('keyword_negara');



		// $cek=$this->BeasiswaM->pencarian_beasiswa($keyword_universitas, $keyword_tingkatan)->num_rows();

		$data =  array(
			"keyword_jenjang"=>$keyword_jenjang,
			"keyword_kategori"=>$keyword_kategori,
			"keyword_negara"=>$keyword_negara

		);

		// if($cek > 0 ){

			// $data['pencarian_beasiswa']=$this->BeasiswaM->pencarian_beasiswa($keyword_universitas, $keyword_tingkatan)->result();
			$this->load->view('pencari/detail_pencarian_beasiswa', $data);
		// }
		
	}


	public function scraping_ugm($id_universitas, $page) {
		$result=array();
		$hasil = $this->BeasiswaM->get_url_universitas($id_universitas);
		$nama_universitas = $hasil->nama_universitas;
		


		$html_load = file_get_html($hasil->url . 'page/' . $page);
		$i = 0;
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			foreach ($html_load->find('div#content .post') as $data ) {

				
				if(!empty($data->children(0)->children(0)->children(0)->children(0)->src)){
					if (!empty($data->children(0)->children(1)->children(1)->children(1)->children(0)->plaintext)){

						$result[$i]= array(
							'gambar'=> $data->children(0)->children(0)->children(0)->children(0)->src,
							'judul'=> $data->children(0)->children(1)->children(0)->children(0)->children(0)->plaintext,
							'tanggal'=> $data->children(0)->children(1)->children(0)->children(1)->children(1)->plaintext,
							'deskripsi'=> $data->children(0)->children(1)->children(1)->children(1)->children(0)->plaintext,
							'link'=> $data->children(0)->children(1)->children(0)->children(0)->children(0)->href
						);
					}else{

						$result[$i]= array(
							'gambar'=> $data->children(0)->children(0)->children(0)->children(0)->src,
							'judul'=> $data->children(0)->children(1)->children(0)->children(0)->children(0)->plaintext,
							'tanggal'=> $data->children(0)->children(1)->children(0)->children(1)->children(1)->plaintext,
							'deskripsi'=> 'Deskripsi tidak ada',
							'link'=> $data->children(0)->children(1)->children(0)->children(0)->children(0)->href
						);

					}
				}else{

					$result[$i]= array(
						'gambar'=> 'Gambar tidak ada',
						'judul'=> $data->children(0)->children(1)->children(0)->children(0)->children(0)->plaintext,
						'tanggal'=> $data->children(0)->children(1)->children(0)->children(1)->children(1)->plaintext,
						'deskripsi'=> $data->children(0)->children(1)->children(1)->children(1)->children(0)->plaintext,
						'link'=> $data->children(0)->children(1)->children(0)->children(0)->children(0)->href
					);


				}
				$i++;



			}


			

			foreach ($html_load->find('div#content .pagination') as $data ) {
				

				$page2 = $page + 1;
				$page3 = $page - 1;
				
				if($data->find('.next')){
					$result['next']= base_url('Pencarian_BeasiswaC/simpan_pencarian/' . $id_universitas . '/' . $page2);
				}

				if($data->find('.prev')){
					$result['prev']= base_url('Pencarian_BeasiswaC/simpan_pencarian/' . $id_universitas . '/' . $page3);
				}
			}
			
			

		}

		return $result;
	}




	public function scrapping_by_universitas(){

		$result=array();
		$id_universitas=$this->input->post('keyword_universitas');
		$hasil = $this->BeasiswaM->get_url_universitas($id_universitas);
		$nama_universitas = $hasil->nama_universitas;
		
		$html_load = file_get_html($hasil->url);
		$i = 0;
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			foreach ($html_load->find('div#ht-content .ht-container') as $data ) {
					
					foreach ($data->find('main#main') as $value) {
						
					foreach ($value->find('article') as $a) {

						$search = array(
						'Hai sobat Beasiswa.ID',
						'Hai Sobat Beasiswa.ID!', 
						'Hai Sobat Beasiswa.ID !',
						'Hai sobat Beasiswa.ID!',
						'Hai, Sobat Beasiswa.ID',
						'!'
					);

					$newstring = '';

					$result[$i] = array (
						'judul'=> $a->children(0)->children(0)->children(0)->plaintext,
						'deskripsi'=> str_replace($search, $newstring, $a->children(2)->plaintext),
						'link'=> $a->children(0)->children(0)->children(0)->href
					);
					// $langs['replace'] = array ('Hai Sobat Beasiswa.ID!'=>" ");
				
					$i++;


			}

				

			}
				
		}		
	
	}

	return $result;


	}



	public function tampil_beasiswa_univ(){

		$keyword_universitas = $this->input->post('keyword_universitas');

		$result = $this->scrapping_by_universitas();


		$data =  array(
			
				'keyword_universitas'=>$this->db->where('id_universitas', $keyword_universitas)->get('universitas')->row()->nama_universitas,
				'id_pencari'=>$this->session->userdata['id_pencari']
			);
				// $this->PencarianM->insertPencarian($data);

			$data['pencarian_beasiswa_by_univ']=$this->BeasiswaM->pencarian_beasiswa_by_univ($keyword_universitas)->result();
				
				$data['hasil']=$result;
				$data['detail_univ']=$this->UniversitasM->get_full_univ($keyword_universitas)->row_array();
			
			$this->load->view('pencari/detail_pencarian_beasiswa_by_univ', $data);


	}


	public function scrapping_detail_beasiswa_by_universitas(){

		$url_detail = $this->input->post('link');



		// $this->load->view('pencari/detail_list_beasiswa_univ');


		$html_load = file_get_html($url_detail);
		$result=array();
		$i = 0;
		

		if($html_load && is_object($html_load) && isset($html_load->nodes)){
		
			
		foreach ($html_load->find('div#ht-page #ht-content') as $data ) {
			$sub = array();	
			foreach ($data->find('div.ht-container h1') as $value ) {

				$sub = $value->plaintext;
			}

			$result[$i]=$sub;
			$i++;
	
		}
		$i = 0; 				
			

				foreach ($html_load->find('div#primary') as $a ) {
					foreach ($a->find('main#main') as $b ) {
							foreach ($b->find('div.entry-content') as $hasil ) {
				
				$result[$i]= $hasil->plaintext;
				$i++;
			}
		}
	}
				   
			

			



		

			
			echo "<pre>";
				print_r($result);
				print_r($sub);
				echo "</pre>";


			

		
			

			

			

				

			


					// $search = array(
					// 	'Hai sobat Beasiswa.ID',
					// 	'Hai Sobat Beasiswa.ID!', 
					// 	'Hai Sobat Beasiswa.ID !',
					// 	'Hai sobat Beasiswa.ID!',
					// 	'Hai, Sobat Beasiswa.ID',
					// 	'!'
					// );

					// $newstring = '';


	

				



}

				

				
}



	public function scraping_uns($id_universitas, $page) {

		$result=array();
		$hasil = $this->BeasiswaM->get_url_universitas($id_universitas);
		$nama_universitas = $hasil->nama_universitas;
		


		$html_load = file_get_html($hasil->url . 'index.php?modul=&halaman=' . $page);
		$i = 0;
		// $hasil = array();
		if($html_load && is_object($html_load) && isset($html_load->nodes)){
			// $sub = array();
			foreach ($html_load->find('div#content #content') as $data ) {




				foreach ($data->find('#content-detail table') as $hasil) {
					$result[$i] = array(
					'tanggal'=>$hasil->children(0)->children(0)->children(0)->plaintext,
					'judul' => $hasil->children(0)->children(0)->children(2)->plaintext,
					'link' => $hasil->children(0)->children(0)->children(2)->href,
					'deskripsi' => $hasil->children(0)->children(0)->children(4)->plaintext
				);
				$page2 = $page + 1;
				$page3 = $page - 1;

					if($page == 1){

						// $result['next'] = $data->children(0)->last_child()->prev_sibling()->prev_sibling()->prev_sibling()->href;

							$result['next'] = base_url('Pencarian_BeasiswaC/simpan_pencarian/' . $id_universitas . '/' . $page2);
					}
					else if($page == 43){

						$result['prev']= base_url('Pencarian_BeasiswaC/simpan_pencarian/' . $id_universitas . '/' . $page3);

					}else{
						$result['prev']= base_url('Pencarian_BeasiswaC/simpan_pencarian/' . $id_universitas . '/' . $page3);
						$result['next'] = base_url('Pencarian_BeasiswaC/simpan_pencarian/' . $id_universitas . '/' . $page2);

					}
					
					// $hasil[$i] = $sub;
					$i++;


				}
				// echo "<pre>";
				// print_r($result);
				// echo "</pre>";
				// exit;
				


			}



		}
		

	return $result;
	}

	public function scraping_itb($keyword_universitas, $page) {
		//halaman
		$page = 1;

		$html_load = file_get_html('https://kemahasiswaan.itb.ac.id/beasiswa/beasiswa/index/'.$page);
		
		if($html_load && is_object($html_load) && isset($html_load->nodes)){

			$hasil = array();

			$index = 0;

			//judul beasiswa
			foreach ($html_load->find('div#content .beasiswa-title') as $data ) {
				$hasil[$index] = $data->plaintext;
				$index++;
			}
			$index = 0; //index dikembalikan ke 0 lagi

			//content beasiswa
			foreach ($html_load->find('div#content .beasiswa') as $data ) {
				$sub = array();
				foreach ($data->find('tbody tr') as $result) {
					
					$sub_judul = $result->children(0)->plaintext;
					
					if($result->children(0)->plaintext != 'Link') {
						$sub[$sub_judul] = $result->children(2)->plaintext;
					}else{
						$sub[$sub_judul] = $result->children(3)->plaintext;
					}
				}
				$hasil[$index] = $sub;
				$index++;
			}

			//cetak
			echo "<pre>";
			print_r($hasil);
			echo "</pre>";

			echo "<hr>";

			//pagination
			foreach ($html_load->find('div#content .pagination') as $data ) {
				if($page == 1) {
					// echo $data->children(0);
					echo 'next : ' . $data->children(3)->children(0);
					break;
				}elseif ($page == 2) {
					echo 'prev : ' . $data->children(0)->children(0);
					echo 'next : ' . $data->children(5)->children(0);
					break;
				}elseif ($page == 3) {
					echo 'prev : ' . $data->children(0)->children(0);
					echo 'next : ' . $data->children(6)->children(0);
					break;
				}elseif ($page >= 4) {
					if($data->children(0)->children(0)->plaintext === '‹ First' ) {
						echo 'ada first';
					}
					echo 'prev : ' . $data->children(1)->children(0);
					if(!empty($data->children(7))) {
						echo 'next : ' . $data->children(7)->children(0);
					}
					break;
				}
			}

		}
	}



	public function simpan_pencarian($id = NULL, $page = NULL){

		$keyword_nama_universitas=$this->input->post('nama_univ');
		$keyword_universitas=$this->input->post('keyword_universitas');
		$keyword_tingkatan=$this->input->post('keyword_tingkatan');

		$id_univ = $this->BeasiswaM->get_univ_by_id($keyword_universitas)->row_array();

		// echo $id_univ['id_universitas'];
		// exit;


		if (!empty($id)) {
			$keyword_universitas=$id;
		}

		if( $keyword_universitas == 1 ){
			if (!empty($id)) {
				$result=$this->scraping_ugm($id, $page);
			}else{

				$result=$this->scraping_ugm($keyword_universitas, 1);

			}

		}elseif ($keyword_universitas == 2) {
			$this->scraping_itb($keyword_universitas, 1);
		}elseif ($keyword_universitas == 3) {
			if (!empty($id)) {
				$result=$this->scraping_ugm($id, $page);
			}else{

				$result=$this->scraping_ugm($keyword_universitas, 1);

			}
			
		}
		
		// $this->load->view('pencari/detail_pencarian_beasiswa_by_univ');


		// $cek=$this->BeasiswaM->pencarian_beasiswa($keyword_universitas, $keyword_tingkatan)->num_rows();


		if ($this->session->userdata('logged_in')){

			$nama_pencari= $this->session->userdata['username'];
			$getId=$this->PencariM->getIdPencari($nama_pencari);

			// if($cek > 0 ){
			$data =  array(

				"keyword_universitas"=>$this->db->where('id_universitas', $keyword_universitas)->get('universitas')->row()->nama_universitas,
				"id_pencari"=>$this->session->userdata['id_pencari']
			);
				// $this->PencarianM->insertPencarian($data);

			$data['pencarian_beasiswa_by_univ']=$this->BeasiswaM->pencarian_beasiswa_by_univ($keyword_universitas)->result();
			$data['hasil']=$result;



			$this->load->view('pencari/detail_pencarian_beasiswa_by_univ', $data);

			// }
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

