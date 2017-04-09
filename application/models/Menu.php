<?php

/**
 * Modified to use REST client to get port data from our server.
 */
define('REST_SERVER', 'http://backend.local');  // the REST server host
define('REST_PORT', $_SERVER['SERVER_PORT']);   // the port you are running the server on

class Menu extends CI_Model {

	// constructor
	function __construct()
	{
		parent::__construct();
		//*** Explicitly load the REST libraries. 
		$this->load->library(['curl', 'format', 'rest']);
	}

	function rules() {
		$config = [
			['field'=>'id', 'label'=>'Menu code', 'rules'=> 'required|integer'],
			['field'=>'name', 'label'=>'Item name', 'rules'=> 'required'],
			['field'=>'description', 'label'=>'Item description', 'rules'=> 'required|max_length[256]'],
			['field'=>'price', 'label'=>'Item price', 'rules'=> 'required|decimal'],
			['field'=>'picture', 'label'=>'Item picture', 'rules'=> 'required'],
			['field'=>'category', 'label'=>'Menu category', 'rules'=> 'required']
		];
		return $config;
	}
}
