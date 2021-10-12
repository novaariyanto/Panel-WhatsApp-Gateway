<?php

class Device_model extends CI_Model
{
    private $_table = "tb_device";
    const SESSION_KEY = 'id';

    public function rules()
    {
        return [
            [
                'field' => 'device_name',
                'label' => 'Device Name',
                'rules' => 'required',
            ]
        ];
    }
	public function authQr()
	{
		
		echo "auth";
	}

    public function add($device_name, $panel_key)
    {
        $this->load->library('whatsva');
        $data_user = $this->auth_model->current_user();
        $username = str_replace(' ', '_', $data_user->username);


		$gettinData = json_decode($this->whatsva->initInstance($username."_".$device_name,$panel_key));
	    if (!$this->session->has_userdata(self::SESSION_KEY)) {
            return null;
        }
        $user_id = $this->session->userdata(self::SESSION_KEY);
        if($gettinData){
            
		if($gettinData->success){ 
			$gettinData->data->instance_name;
				$data = [
					'device_name' => $gettinData->data->instance_name,
					'api_key' => $gettinData->data->instance_key,
					'status' => "1",
					'id_user'=> $user_id,
					'reg_date'=>date('Y-m-d')
				];
		
				return $this->db->insert($this->_table, $data);
			
		}else{
            $this->session->set_flashdata('message_add_device_error', $gettinData->message);
			return FALSE;
		}
        }else{
            $this->session->set_flashdata('message_add_device_error', "can't connect to server");
			return FALSE;
        }
    }
  
    public function getCount()
	{
        if (!$this->session->has_userdata(self::SESSION_KEY)) {
            return null;
        }
        $user_id = $this->session->userdata(self::SESSION_KEY);

        // $query = $this->db->get_where($this->_table, ['id_user' => $user_id]);
        $this->db->select("*");
		$this->db->from($this->_table);
        $this->db->where("id_user",$user_id);
		$this->db->order_by("id","desc");
        $query = $this->db->get();

        
	
        return 	$query->num_rows();
	}
    public function getAll($limit,$start)
    {
        if (!$this->session->has_userdata(self::SESSION_KEY)) {
            return null;
        }
        $user_id = $this->session->userdata(self::SESSION_KEY);

        // $query = $this->db->get_where($this->_table, ['id_user' => $user_id]);
        $this->db->select("*");
		$this->db->from($this->_table);
		$this->db->where("id_user",$user_id);
		$this->db->order_by("id","desc");
		$this->db->limit($start,$limit);
        $query = $this->db->get();
		return $query->result();
	}
    public function getAlls()
    {
        if (!$this->session->has_userdata(self::SESSION_KEY)) {
            return null;
        }
        $user_id = $this->session->userdata(self::SESSION_KEY);

        $query = $this->db->get_where($this->_table, ['id_user' => $user_id]);
    
		return $query->result();
	}
	public function getbyId($id)
	{
		$query = $this->db->get_where($this->_table, ['id' => $id]);
        return $query->row();
	}
    public function getWhere($where)
	{
		$query = $this->db->get_where($this->_table, $where);
        return $query->row();
	}
    public function getSetting()
    {
        $query = $this->db->get_where($this->_table, ['id' => "1"]);
        return $query->row();
    }
	public function update($data,$id)
	{
		return $this->db->update($this->_table, $data, ['id' => $id]);
	}
    public function update_($app_name, $domain, $panel_key)
    {
        $data = [
            'app_name' => $app_name,
            'domain' => $domain,
            'panel_key' => $panel_key,
        ];

        return $this->db->update($this->_table, $data, ['id' => $id]);
    }

}
