<?php

namespace controllers;

use framework\Controller;
use framework\Model;
use framework\View;
use models\MaintenanceUnplanned as MaintenancePlannedModel;
use views\MaintenanceUnplanned as MaintenancePlannedView;
use controllers\NavigationBar;


class MaintenancePlanned extends Controller
{
    protected $view;
    protected $model;

    public function __construct(View $view=null, Model $model=null)
    {
        $this->view = empty($view) ? $this->getView() : $view;
        $this->model = empty($model) ? $this->getModel() : $model;
        parent::__construct($this->view,$this->model);
    }

    protected function autorun($parameters = null)
    {
        $this->grantRole(ISPETTORE_ROLE_ID);
        $this->grantRole(CERTIFICATORE_ROLE_ID);
        $this->restrictToRBAC();

        $navigation = new NavigationBar();
        $this->checkPermissionsAndBind($navigation);

        $maintenanceEdit = new MaintenancePlannedEdit();
        $this->checkPermissionsAndBind($maintenanceEdit);

        $maintenance = new MaintenancePlannedMachines();
        $this->checkPermissionsAndBind($maintenance);

    }
    public function getView(){
        return new MaintenancePlannedView("/maintenance_planned");
    }
    public function getModel(){
        return new MaintenancePlannedModel();
    }
}
