<?php

class Autoreply_model extends CI_Model
{
    private $_table = "tb_autoreply";
    const SESSION_KEY = 'id';

    public function rules()
    {
        return [
            [
                'field' => 'instance_key',
                'label' => 'Instance',
                'rules' => 'required',
            ],
            [
                'field' => 'receive',
                'label' => 'Receive',
                'rules' => 'required',
            ],
            [
                'field' => 'reply',
                'label' => 'Reply',
                'rules' => 'required',
            ], [
                'field' => 'type',
                'label' => 'Type',
                'rules' => 'required',
            ]
        ];
    }


    public function add($instance_key,$receive, $reply,$type)
    {
	    if (!$this->session->has_userdata(self::SESSION_KEY)) {
            return null;
        }
      
        $data = [
            'instance_key' => $instance_key,
            'receive' => $receive,
            'reply'=>$reply,
            'type' => "1"
        ];

        return $this->db->insert($this->_table, $data);
 
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
        $this->db->join("tb_device",$this->_table.".instance_key = tb_device.api_key");
        $this->db->where("tb_device.id_user",$user_id);
		$this->db->order_by("tb_device.id","desc");
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
        $this->db->select("tb_autoreply.*,tb_device.device_name");
		$this->db->from($this->_table);
        $this->db->join("tb_device","tb_autoreply.instance_key = tb_device.api_key");
		$this->db->where("tb_device.id_user",$user_id);
		$this->db->order_by("tb_device.id","desc");
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
    public function getWhere($where)
    {
        $query = $this->db->get_where($this->_table, $where);
        return $query->result();
    }
    public function getWhere2($where)
    {
        $query = $this->db->get_where($this->_table, $where);
        return $query->row();
    }
	public function getbyId($id)
	{
		$query = $this->db->get_where($this->_table, ['id' => $id]);
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
    public function delete($id)
    {
        return $this->db->delete($this->_table,["id"=>$id]);
    }

}
