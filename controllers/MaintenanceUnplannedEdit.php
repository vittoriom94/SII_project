<?php

namespace controllers;

use framework\components\DataRepeater;
use framework\Controller;
use framework\Model;
use framework\View;
use views\MaintenanceUnplannedEdit as MUEView;
use models\MaintenanceUnplannedMachines as MUMModel;
use models\Machines as Machines;

class MaintenanceUnplannedEdit extends Controller
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

        if(isset($_POST["new_failure"])){
            $this->createNewFailure();
        }
        if(isset($_POST["start_repair"])){
            $this->startRepair();
        }

        if(isset($_POST["end_repair"])){
            $this->endRepair();
        }

        $machinesModel = new Machines();
        $result = $machinesModel->getMachines();
        $this->view->setMachines($result);
        $result = $this->model->getMaintenance();
        $this->view->setMaintenances($result);
    }

    function hideUnauthorizedBlocks(){

        $user = $this->restrictToAuthentication(null,null,null);
        $role= $user->getRole();
        if($role == ADMIN_ROLE_ID){
            return;
        }
        //3 operatore, 2 analista, 1 certificatore
        $blocks = [3, 2, 1];

        $this->view->openBlock("role_visibility");

        if($role == 3) {
            $this->view->setVar("operatore","initial");
            $this->view->setVar("analista","none");
            $this->view->setVar("certificatore","none");
            $this->view->setVar("edit","none");
        }

        if($role == 2) {
            $this->view->setVar("operatore","none");
            $this->view->setVar("analista","initial");
            $this->view->setVar("certificatore","none");
            $this->view->setVar("edit","initial");
        }

        if($role == 1) {
            $this->view->setVar("operatore","none");
            $this->view->setVar("analista","none");
            $this->view->setVar("certificatore","initial");
            $this->view->setVar("edit","initial");
        }
        $this->view->parseCurrentBlock();
        $this->view->setBlock();

    }

    function createNewFailure(){
        $p["entity_id"] = $_POST["id_macchina"];
        $p["department"] = $_POST["reparto"];
        $p["operation"] = $_POST["operazione"];
        $p["description"] = $_POST["descrizione"];
        $p["date_failure"] = $_POST["failure_date"];
        $p["status_id"] = 1;
        $this->model->insertRepairJob($p);

    }

    function startRepair(){
        $id = $_POST["id_guasto"];
        $p["internal_team"] = $this->computeTeam($_POST["team"]);
        $p["start_date"] = $_POST["start_date"];
        $p["status_id"] = 2;
        $this->model->editRepairJob($id,$p);
    }

    function computeTeam($team){
        return $team == "internal";
    }

    function endRepair(){
        $id = $_POST["id_guasto"];
        $p["end_date"] = $_POST["end_date"];
        $p["status_id"] = $_POST["resolved"];
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
        $view = new MUEView("/maintenance_unplanned_edit");
        return $view;
    }

    /**
     * Inizialize the Model by loading models\Machines class
     *
     */
    public function getModel()
    {
        $model = new MUMModel();
        return $model;
    }
}
