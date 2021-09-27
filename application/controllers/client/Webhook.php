<?php

class Webhook extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('auth_model');
        if (!$this->auth_model->current_user()) {
            redirect('auth/login');
        }
        $data_user =$this->auth_model->current_user(); 
        if($data_user->level !== "1"){
            redirect('/dashboard');
        }
        $this->load->model('setting_model');
        $this->load->model('device_model');
		$this->load->model('messages_model');
        $this->load->library('whatsva');
        $this->load->model('webhook_model');
    }

    public function index()
    {
        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();

        $page = @$_GET['page'];
		$limit = 10;
		if(!@$page){
			$start = 0;
		}else{
			$start = $page * $limit;
			
		}

        $data['devices'] = $this->webhook_model->getAll($start,$limit);
        $data['devices_count']= $this->webhook_model->getCount();

        $this->load->view('layouts/header', $data);
        $this->load->view('client/webhook/list', $data);
        $this->load->view('layouts/footer');

    }
    public function add()
    {
        $this->load->library('form_validation');

        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();
        $data['devices'] = $this->device_model->getAlls();

        $rules = $this->webhook_model->rules();
        $this->form_validation->set_rules($rules);

        if ($this->form_validation->run() == false) {

            $this->load->view('layouts/header', $data);
            $this->load->view('client/webhook/add', $data);
            $this->load->view('layouts/footer');
            return;
        }

        $url = $this->input->post('webhook_url');
        $instance = $this->input->post('instance_key');

		$datasetting = $this->setting_model->getSetting();
        if ($this->webhook_model->add($instance,$url,"1")) {
            redirect('./webhook');
        }
      
        $this->load->view('layouts/header', $data);
        $this->load->view('client/webhook/add', $data);
        $this->load->view('layouts/footer');

    }
    public function edit($id)
    {   
        $this->load->library('form_validation');

        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();
        $data['devices'] = $this->device_model->getAlls();
        $data['webhook'] = $this->webhook_model->getbyId($id);

        $rules = $this->webhook_model->rules();
        $this->form_validation->set_rules($rules);

        if ($this->form_validation->run() == false) {

            $this->load->view('layouts/header', $data);
            $this->load->view('client/webhook/edit', $data);
            $this->load->view('layouts/footer');
            return;
        }

        $url = $this->input->post('webhook_url');
        $instance = $this->input->post('instance_key');
        $data = [
            "url"=>$url,
            "instance_key"=>$instance
        ];
		
        if ($this->webhook_model->update($data,$id)) {
            redirect('./webhook');
        }
      
        $this->load->view('layouts/header', $data);
        $this->load->view('client/webhook/edit', $data);
        $this->load->view('layouts/footer');
    }
    public function delete($id)
    {
        if ($this->webhook_model->delete($id)) {
            redirect('./webhook');
        }
      
    }
  
  
    // ... ada kode lain di sini ...
}
