<?php

namespace controllers;

use framework\Controller;
use framework\Model;
use framework\View;
use models\MaintenanceUnplanned as MaintenanceUnplannedModel;
use util\RoleUtils;
use views\MaintenanceUnplanned as MaintenanceUnplannedView;
use controllers\NavigationBar;


class MaintenanceUnplanned extends Controller
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

        $this->grantRole(RoleUtils::OPERATORE_ROLE_ID);
        $this->grantRole(RoleUtils::ANALISTA_ROLE_ID);
        $this->grantRole(RoleUtils::CERTIFICATORE_ROLE_ID);
        $this->restrictToRBAC();

        $navigation = new NavigationBar();
        $this->checkPermissionsAndBind($navigation);

        $maintenanceEdit = new MaintenanceUnplannedEdit();
        $this->checkPermissionsAndBind($maintenanceEdit);

        $maintenance = new MaintenanceUnplannedMachines();
        $this->checkPermissionsAndBind($maintenance);



    }
    public function getView(){
        return new MaintenanceUnplannedView("/maintenance_unplanned");
    }
    public function getModel(){
        return new MaintenanceUnplannedModel();
    }
}
