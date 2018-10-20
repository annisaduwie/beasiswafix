
<?php //defined('BASEPATH') OR exit('No direct script access allowed');
class Cron extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
		$this->load->library('crawler');
	}
	public function index(){
		$site_url = "https://ditmawa.ugm.ac.id/";
		$site_data = $this->get_site_data($site_url, 100, 0);
		var_dump($site_data);
		exit;
		// foreach ($site_data as $key=>$val)
		// {
			
		// 	if($key == 'links'){
		// 		foreach($val as $v){
		// 			echo $v.'<hr>';
		// 		}
		// 	}else{
		// 	echo $key.' : '.$val.'<br><br><br>';
		// }
		// }
	}
	private function get_site_data($site_url, $max_depth = 100, $current_depth = 0){
		$current_depth++;
		$site_data = array();
		if($this->crawler->set_url($site_url) !== false){
			$site_data['title'] = $this->crawler->get_title();
			$site_data['description'] = $this->crawler->get_description();
			$site_data['keywords'] = $this->crawler->get_keywords();
			$site_data['text'] = $this->crawler->get_text();
			// $site_data['image'] = $this->crawler->get_pic();
			$site_data['links'] = $this->crawler->get_links();
			// var_dump($site_data['links']);
			// exit;
			if($current_depth <= $max_depth){
				foreach($site_data['links'] as $link_key => &$link){
					$link['data'] = $this->get_site_data($link, $max_depth, $current_depth);
				}
			}
			return $site_data;
		}
		else{
			return false;
		}
	}

	// $site_data = get_site_data("http://github.com", 1, 0);
}

