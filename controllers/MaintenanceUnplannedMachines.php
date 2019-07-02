<?php

namespace controllers;

use framework\components\DataRepeater;
use framework\Controller;
use framework\Model;
use framework\View;
use views\MaintenanceUnplannedMachines as MUMView;
use models\MaintenanceUnplannedMachines as MUMModel;

class MaintenanceUnplannedMachines extends Controller
{

    public function __construct(View $view=null, Model $model=null)
    {
        //$this->view = empty($view) ? $this->getView() : $view;
        //$this->model = empty($model) ? $this->getModel() : $model;
        //parent::__construct($this->view,$this->model);
        //$this->grantRole(ADMIN_ROLE_ID);
        $this->model = $this->getModel();
        $this->view = $this->getView();
        parent::__construct($this->view,$this->model);
    }

    protected function autorun($parameters = null)
    {
        $maintenanceList = $this->model->getMaintenance();
        $maintenances = new DataRepeater($this->view, null, "Maintenances", $maintenanceList);

        $this->bindComponent($maintenances);
    }



    /**
     * Inizialize the View by loading static design of /machines.html.tpl
     * managed by views\Machines class
     *
     */
    public function getView()
    {
        //$view = new MachinesView("/machines");
        $view = new MUMView("/maintenance_unplanned_machines");
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
