<?php

namespace views;

use framework\exceptions\BlockNotFoundException;
use framework\View;

class MaintenancePlannedEdit extends View
{
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/maintenance_planned_edit";
        parent::__construct($tplName);
    }

    public function setMachines($result){
        try {
            $this->openBlock("tendina");
        } catch (BlockNotFoundException $e) {
            return;
        }
        while ($temp = $result->fetch_object()) {
            $this->setVar("id_macchina", $temp->id_entity);
            $this->setVar("macchina", $temp->id_interno);
            $this->parseCurrentBlock();
        }
        $this->setBlock();

    }

    public function setMaintenances($result){
        try {
            $this->openBlock("maintenances");
        } catch (BlockNotFoundException $e) {
            return;
        }
        while ($temp = $result->fetch_object()) {
            $this->setVar("id_maintenances", $temp->id_maintenance);
            $this->setVar("maintenances", $temp->id_maintenance);
            $this->parseCurrentBlock();
        }
        $this->setBlock();

    }

    public function setMaintenanceTypes($result){

        $this->openBlock("maintenance_types");

        while ($temp = $result->fetch_object()) {
            $this->setVar("id_maintenance_type", $temp->id_maintenance_type);
            $this->setVar("maintenance_type", $temp->maintenance_name);
            $this->parseCurrentBlock();
        }
        $this->setBlock();

    }

    //non dovrebbe servirmi
    public function setDefaultFields($result){
        $temp = $result->fetch_object();
        $this->openBlock("form_fields");

        $this->setVar("description", $temp->id_maintenance);//??

        $this->parseCurrentBlock();
        $this->setBlock();
    }

}
