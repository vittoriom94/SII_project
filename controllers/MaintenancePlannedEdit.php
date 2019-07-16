<?php

namespace controllers;

use framework\components\DataRepeater;
use framework\Controller;
use framework\Model;
use framework\View;
use views\MaintenancePlannedEdit as MPEView;
use models\MaintenancePlannedMachines as MPMModel;
use models\Machines as Machines;

class MaintenancePlannedEdit extends Controller
{

    public function __construct(View $view=null, Model $model=null)
    {

        $this->model = $this->getModel();
        $this->view = $this->getView();
        parent::__construct($this->view,$this->model);
    }

    protected function autorun($parameters = null)
    {



        $this->hideUnauthorizedBlocks();

        if(isset($_POST["new_maintenance"])){
            $this->createNewMaintenance();
        }
        if(isset($_POST["edit_maintenance"])){
            $this->editMaintenance();
        }


        $machinesModel = new Machines();
        $result = $machinesModel->getMachines();
        $this->view->setMachines($result);
        $result = $this->model->getMaintenance();
        $this->view->setMaintenances($result);
        $result = $this->model->getMaintenanceTypes();
        $this->view->setMaintenanceTypes($result);
    }

    function hideUnauthorizedBlocks(){

        $user = $this->restrictToAuthentication(null,null,null);
        $role= $user->getRole();
        if($role == ADMIN_ROLE_ID){
            return;
        }
        //3 operatore, 2 analista, 1 certificatore

        $this->view->openBlock("role_visibility");

        if($role == 3) {
            $this->view->setVar("operatore","initial");
            $this->view->setVar("certificatore","none");
        }

        if($role == 1) {
            $this->view->setVar("operatore","none");
            $this->view->setVar("certificatore","initial");
        }
        $this->view->parseCurrentBlock();
        $this->view->setBlock();

    }


    function createNewMaintenance(){
        $p["entity_id"] = $_POST["id_macchina"];
        $p["maintenance_description"] = $_POST["descrizione"];
        $p["maintenance_date"] = $_POST["maintenance_date"];
        $p["maintenance_type_id"] = $_POST["maintenance_types"];

        $daysAsHours = intval($_POST["days"])*24;
        $hours = $_POST["hours"];
        $hours = explode(":",$hours);
        $hours[0] = $daysAsHours + intval($hours[0]);
        $hours = join(":",$hours);

        $p["maintenance_time"] = $hours;
        $this->model->insertRepairJob($p);

    }
    //Da completare
    function editMaintenance(){

        $p["entity_id"] = $_POST["id_macchina"];
        $p["maintenance_description"] = $_POST["descrizione"];
        $p["maintenance_date"] = $_POST["maintenance_date"];
        $p["maintenance_type_id"] = $_POST["maintenance_types"];

        $daysAsHours = intval($_POST["days"])*24;
        $hours = $_POST["hours"];
        $hours = explode(":",$hours);
        $hours[0] = $daysAsHours + intval($hours[0]);
        $hours = join(":",$hours);

        $p["maintenance_time"] = $hours;
        $id = intval($_POST["id_maintenances"]);
        $this->model->editRepairJob($id,$p);
    }





    /**
     * Inizialize the View by loading static design of /machines.html.tpl
     * managed by views\Machines class
     *
     */
    public function getView()
    {
        //$view = new MachinesView("/machines");
        $view = new MPEView("/maintenance_planned_edit");
        return $view;
    }

    /**
     * Inizialize the Model by loading models\Machines class
     *
     */
    public function getModel()
    {
        $model = new MPMModel();
        return $model;
    }
}
