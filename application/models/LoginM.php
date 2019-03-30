<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class LoginM extends CI_Model{
	function __construct(){
		parent:: __construct();
		$this->load->database();
	}

	public function ceknum($username, $password){

		$this->db->where("(username = '$username' OR email ='$username')");
		$this->db->where('password', md5($password));
		return $this->db->get('pencari');
	}
	public function ceknumAdmin($username, $password){
		$this->db->where('username', $username);
		$this->db->where('password', md5($password));
		return $this->db->get('admin');
	}
	public function cekStatus($username){
	$this->db->select('status');
	$this->db->where("(username = '$username' OR email ='$username')");
	return $this->db->get('pencari');
	}





}