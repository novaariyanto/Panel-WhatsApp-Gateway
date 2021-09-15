<?php

class Message extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();

		$this->load->model('auth_model');
		if(!$this->auth_model->current_user()){
			redirect('auth/login');
		}
		$this->load->model('messages_model');
		$this->load->model('setting_model');

	}
    public function index()
    {
		$data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();

		$page = @$_GET['page'];
		$limit = 8;
		if(!@$page){
			$start = 0;
		}else{
			$start = $page * $limit;
			
		}
		$data['messages'] = $this->messages_model->getAll($start,$limit);
		$data['messages_count']= $this->messages_model->getCount();

        $this->load->view('layouts/header', $data);
        $this->load->view('message/list', $data);
        $this->load->view('layouts/footer');
    }
	// ... ada kode lain di sini ...
}