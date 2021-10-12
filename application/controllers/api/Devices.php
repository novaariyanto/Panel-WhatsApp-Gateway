<?php

class Devices extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('whatsva');
        header("Content-Type: application/json");
        $this->load->model('messages_model');
        $this->load->model('setting_model');
        $this->load->model('device_model');
    }
    public function getQR($device)
    {
		$datasetting = $this->setting_model->getSetting();
        $data_device = $this->device_model->getbyId($device);
        if ($data_device) {
            $data = $this->whatsva->instancecData($data_device->api_key,$datasetting->panel_key);
            $data = json_decode($data);
            if($data){
                if ($data->success) {
                    if ($data->data->instance_status === "connected") {
                        $updateStatus = $this->device_model->update(["status" => 2], $data_device->id);
                    }
                    echo json_encode($data);
    
                }
            }else{
                echo json_encode(["success"=>false,"message"=>"cant connect to server"]);
            }
          

        }
    }
}