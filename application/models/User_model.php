<?php

class User_model extends CI_Model
{
    private $_table = "tb_user";
    const SESSION_KEY = 'id';

    public function rules()
    {
        return [
            [
                'field' => 'username',
                'label' => 'Username',
                'rules' => 'required',
            ],
            [
                'field' => 'email',
                'label' => 'Email',
                'rules' => 'required',
            ], [
                'field' => 'password',
                'label' => 'Password',
                'rules' => 'required',
            ], [
                'field' => 'level',
                'label' => 'Level',
                'rules' => 'required',
            ]
        ];
    }
	

    public function insert($username,$email,$password,$level)
    {
		$cekusername = $this->getWhere(["username"=>$username]);
        
        if($cekusername){
            $this->session->set_flashdata('message_username_exists_error', "Username Already exists");
			return FALSE;
        }else{
            $data = [
                'username' => $username,
                'email' => $email,
                'password' => password_hash($password,PASSWORD_DEFAULT),
                'level'=> $level,
                'status'=> "1"
            ];
            return $this->db->insert($this->_table, $data);
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
        $this->db->where('status','1');
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
        $this->db->where("status","1");
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
    public function delete($id)
	{
		return $this->db->update($this->_table, ['status'=>'0'], ['id' => $id]);
	}

}
