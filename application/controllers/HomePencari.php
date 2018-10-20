<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class HomePencari extends CI_Controller  {

	function __construct() {
        parent::__construct();
    }

	public function index()
	{

$this->load->view('pencari/user');

}

public function halaman_pencari()
	{
		$this->load->view('pencari/home');
}