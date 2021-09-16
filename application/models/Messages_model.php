<?php

class Messages_model extends CI_Model
{
	private $_table = "tb_message";
	const SESSION_KEY = 'id';

  
  
    public function insert($instance_key,$message,$type,$status,$date_time,$data_message)
	{
        $data = [
			'instance_key' => $instance_key,
            'message'   => $message,
            'type'=> $type,
			'status' => $status,
            'date_time'   => $date_time,
            'data_message'=> json_encode($data_message)
		];
     

        return $this->db->insert($this->_table, $data);
	}
	public function getCount()
	{
		$query = $this->db->get($this->_table);
	
        return 	$query->num_rows();
	}
	public function getAll($start,$limit)
	{
	

		$this->db->select("tb_message.*,tb_device.device_name");
		$this->db->from('tb_message');
		$this->db->join("tb_device","tb_message.instance_key = tb_device.api_key","left");
		$this->db->order_by("tb_message.id","desc");
		$this->db->limit($limit,$start);
        $query = $this->db->get();
		return $query->result();
	}
   
}