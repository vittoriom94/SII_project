<?php

namespace models;


use framework\Model;

class Maintenance extends Model {

    public function getMaintenance(){

            $this->sql =
                <<<SQL
select et.name, fm.entity_id,fm.id_failure_machine,fm.date_failure,fm.start_date,fm.end_date,fm.description,fm.department, fm.operation, s.status_name, r.repair_name from failure_machine fm
join status s on s.status_id=fm.status_id
join repair r on r.repair_id=fm.repair_id
join entity e on e.id_entity=fm.entity_id
join entity_type et on et.id_entity_type=e.entity_type_id
SQL;
        $this->updateResultSet();
        return $this->getResultSet();
    }


    public function insertRepairJob($properties){
        $query = "insert into failure_machine (";
        foreach ($properties as $name => $val){
            $query .= $name . ",";
        }
        $query = substr($query,0,-1);
        $query .= ") values (";
        foreach ($properties as $name => $val){
            if($name == "entity_id" || $name == "status_id" || $name == "repair_id"){
                $val = intval($val);
                $query .= $val .",";
            } else {
                $query .= "'".$val. "'". ",";
            }

        }
        $query = substr($query,0,-1);
        $query .= ")";
        $this->sql =$query;
        $this->updateResultSet();
        return $this->getResultSet();
    }

    public function editRepairJob($failure_id,$properties){
        $query = "update failure_machine SET ";
        foreach ($properties as $name => $val){
            if($name == "entity_id" || $name == "status_id" || $name == "repair_id") {
                $val = intval($val);
                $query .= $name . " = " . $val . ",";
            } else {
                $query .= $name . " = " . "'".$val ."'". ",";
            }
        }
        $query = substr($query,0,-1);
        $query .= "where id_failure_machine=$failure_id";
        $this->sql = $query;
        $this->updateResultSet();
        return $this->getResultSet();
    }

    public function deleteRepairJob($failure_id){

        $this->sql = "delete from failure_machine where id_failure_machine=$failure_id";
        $this->updateResultSet();
    }

    public function getStatuses(){
        $this->sql = "select * from status";
        $this->updateResultSet();
        return $this->getResultSet();
    }

    public function getRepairs(){
        $this->sql = "select * from repair";
        $this->updateResultSet();
        return $this->getResultSet();
    }
}