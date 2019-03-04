<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Detailsmodel extends CI_Model {



	public function __construct()
	{

		parent::__construct();
		$this->load->database();

	}

	public function getdetails()
	{


		$array=array(
			'end_date>' => '2007-05-12',
			"last_name <>" => "Tewari"
		);


		/*$this->db->select("e.first_name as first_name,e.last_name,n.email");
		$this->db->from('employee e');
		$this->db->join('newstrack n', 'e.Empid=n.Empid','inner');
		$this->db->where($array);
		$this->db->order_by('e.start_date','asc');
*/
		$sql="select e.first_name,e.last_name,n.email from employee e inner join newstrack n on e.Empid=n.Empid ";



		$re=$this->db->query($sql);

		return $re->result();

	}

}
