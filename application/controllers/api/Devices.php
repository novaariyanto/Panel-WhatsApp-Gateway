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
    public function updateMultidevice()
    {
         // Takes raw data from the request
       
         $instance_key = $this->input->post('instance_key');
          $multidevice = $this->input->post('multidevice');
         
    
            if ($instance_key == "") {
                $response = ["success" => false, "message" => "instance_key empty"];
            } else if($multidevice == ""){
                $response = ["success" => false, "message" => "multidevice empty"];
            }else{
               
                $datasetting = $this->setting_model->getSetting();
            
                $data_device = $this->device_model->getWhere(["api_key"=>$instance_key]);
              
                if ($data_device) {
                    $update = $this->whatsva->updateMultideviceInstance($instance_key,$datasetting->panel_key,$multidevice);
              
                    $update = json_decode($update);
                    if($update){
                     
                        if($update->success){
                            $updateStatus = $this->device_model->update(["multidevice" => $multidevice], $data_device->id);
                           
                        }
                        echo json_encode($update);
                    }else{
                        echo json_encode(["success"=>false,"message"=>"cant connect to server"]);
                    }
                }
               
            }
       
        # code...
       
      
    }
}