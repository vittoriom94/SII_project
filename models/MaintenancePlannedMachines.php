<?php

namespace models;


use framework\Model;

/**
 * Classe contenente le query per le manutenzioni programmate
 */
class MaintenancePlannedMachines extends Model {
    /**
     * Lista delle manutenzioni
     * @return mixed
     */
    public function getMaintenance(){

        $this->sql =
            <<<SQL
select et.name, 
MAX(Case WHEN ep.property_id = 1 THEN ep.value END) entity_id,
em.id_maintenance,em.maintenance_date,em.maintenance_time,em.service_time,em.maintenance_description, mt.maintenance_name 
from entity_maintenance em
join maintenance_types mt on mt.id_maintenance_type=em.maintenance_type_id
join entity e on e.id_entity=em.entity_id
join entity_type et on et.id_entity_type=e.entity_type_id
join entities_properties ep on e.id_entity=ep.entity_id
group by em.id_maintenance
SQL;
        $this->updateResultSet();
        return $this->getResultSet();
    }

    /**
     * Inserisci manutenzione
     * @param array $properties Informazioni sulla manutenzione
     * @return mixed
     */
    public function insertRepairJob($properties){
        $query = "insert into entity_maintenance (";
        foreach ($properties as $name => $val){
            $query .= $name . ",";
        }
        $query = substr($query,0,-1);
        $query .= ") values (";
        foreach ($properties as $name => $val){
            if($name == "entity_id" || $name == "maintenance_type_id"){
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

    /**
     * Modifica manutenzione
     * @param string $failure_id Id della manutenzione
     * @param array $properties Proprietà della manutenzione
     * @return mixed
     */
    public function editRepairJob($failure_id,$properties){
        $query = "update entity_maintenance SET ";
        foreach ($properties as $name => $val){
            if($name == "entity_id" || $name == "maintenance_type_id") {
                $val = intval($val);
                $query .= $name . " = " . $val . ",";
            } else {
                $query .= $name . " = " . "'".$val ."'". ",";
            }
        }
        $query = substr($query,0,-1);
        $query .= " where id_maintenance=$failure_id";
        $this->sql = $query;
        $this->updateResultSet();
        return $this->getResultSet();
    }

    /**
     * Cancella manutenzione
     * @param string $failure_id Id della manutenzione
     */
    public function deleteRepairJob($failure_id){

        $this->sql = "delete from entity_maintenance where id_maintenance=$failure_id";
        $this->updateResultSet();
    }

    public function getMaintenanceTypes(){
        $this->sql = "select * from maintenance_types";
        $this->updateResultSet();
        return $this->getResultSet();
    }


}