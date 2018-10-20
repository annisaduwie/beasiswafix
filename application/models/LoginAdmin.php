<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class LoginAdmin extends CI_Model{
	function __construct(){
		parent:: __construct();
		$this->load->database();
	}

	public function ceknumAdmin($username, $password){
		$this->db->where('username', $username);
		$this->db->where('password', md5($password));

		// $this->db->where('peran', 'analis');
		return $this->db->get('admin');
	}

}