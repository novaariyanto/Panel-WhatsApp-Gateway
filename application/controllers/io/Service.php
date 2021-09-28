<?php

class Service extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('whatsva');
        header("Content-Type: application/json");
        $this->load->model('messages_model');
        $this->load->model('messageIn_model');
        $this->load->model('setting_model');
        $this->load->model('webhook_model');
        $this->load->model('autoreply_model');
    }
   
    public function index()
    {   
            $json = file_get_contents('php://input');
            $data = json_decode($json);
            if($data){
                // event
                $event = $data->event;
                $instance = $data->instance_key;
                $sender = $data->data->chat->jid->user;
                if($event === "open"){
                    echo json_encode([
                        "success"=>true,
                        "message"=>"open"
                    ]);
                }else if($event === "qr"){
                    echo json_encode([
                        "success"=>true,
                        "message"=>"qr"
                    ]);
                }else if($event === "group-update"){
                    echo json_encode([
                        "success"=>true,
                        "message"=>"group update"
                    ]);
                }else if($event === "close"){
                    echo json_encode([
                        "success"=>true,
                        "message"=>"close"
                    ]);
                }else if($event === "message"){
                    $webhooks = $this->webhook_model->getWhere(["instance_key"=>$instance]);
                    foreach ($webhooks as $value) {
                     
                      if($value->status){
                        $curl =   $this->curlData($value->url,$data->data);
                      }
                    }
                    if(@$data->data->conversation){
                        $message = $data->data->conversation;
                        $replys = $this->autoreply_model->getWhere2(["receive"=>$message]);
                        if($replys){
                            $response = $this->whatsva->sendMessageText($instance, $sender, $replys->reply,"");
                        }
                        // insert type message text
                        $data_message = $data->data;
                        $type = "chat-text";
                        $status = "received";
                        $timestamp = $data_message->ts;
                        $datetimeFormat = 'Y-m-d h:m:s';

                        $date_time = date($datetimeFormat,$timestamp);
                        // If you must have use time zones
                        // $date = new \DateTime('now', new \DateTimeZone('Europe/Helsinki'));
                    
                        $save_message_in = $this->messageIn_model->insert($data_message->externalId,$instance,$date_time,$data_message->pushname,$sender,$type,$status,$message,$data_message);   
                    }
                 
                }else{
                    echo json_encode([
                        "success"=>true,
                        "message"=>"event not found"
                    ]);
                }
                // end event
               
            }else{
                echo json_encode([
                    "success"=>false,
                    "message"=>"Request data not found"
                ]);
            }
        

    }
    public function curlData($url, $data)
    {

        $curl = curl_init();

        $payload = json_encode($data);

        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($ch);
        curl_close($ch);
        return $result;

    }
}