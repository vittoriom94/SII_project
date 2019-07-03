<?php

namespace views;

use framework\exceptions\BlockNotFoundException;
use framework\exceptions\NotInitializedViewException;
use framework\View;

class MaintenanceUnplannedEdit extends View
{
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/maintenance_unplanned_edit";
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
            $this->openBlock("guasti");
        } catch (BlockNotFoundException $e) {
            return;
        }
        while ($temp = $result->fetch_object()) {
            $this->setVar("id_guasto", $temp->id_failure_machine);
            $this->setVar("guasto", $temp->id_failure_machine);
            $this->parseCurrentBlock();
        }
        $this->setBlock();

    }
}
