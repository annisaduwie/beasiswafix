<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class HomeAdmin extends CI_Controller  {

	function __construct() {
        parent::__construct();
    }

	public function index()
	{

		$this->load->view('admin/homeAdmin');
	
}

public function kelola_pencari()
	{
		$this->load->view('admin/kelola_pencari');
}

}