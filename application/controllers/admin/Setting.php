<?php

class Setting extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('auth_model');
		if(!$this->auth_model->current_user()){
			redirect('auth/login');
		}
        $this->load->model('setting_model');
		$data_user =$this->auth_model->current_user(); 
        if($data_user->level !== "2"){
            redirect('/dashboard');
        }
	}
 
    public function index()
    {
      
		$this->load->library('form_validation');

		$rules = $this->setting_model->rules();
		$this->form_validation->set_rules($rules);


        $data['setting'] = $this->setting_model->getSetting();
        $data['current_user'] = $this->auth_model->current_user();
        
		if($this->form_validation->run() == FALSE){
            $this->load->view('layouts/header',$data);
             $this->load->view('admin/setting/edit',$data);
               $this->load->view('layouts/footer');
               return;
		}
      

        $app_name = $this->input->post('app_name');
        $domain = $this->input->post('domain');
        $panel_key = $this->input->post('panel_key');

        if($this->setting_model->update_($app_name, $domain,$panel_key)){
			redirect('setting');
		} else {
			$this->session->set_flashdata('message_setting_edit_error', 'Update data fail');
		}

    }
	// ... ada kode lain di sini ...
}