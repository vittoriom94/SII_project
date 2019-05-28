<?php

namespace controllers;

use framework\Controller;
use framework\Model;
use framework\View;
use models\HomeAnalista as HomeAnalistaModel;
use views\HomeAnalista as HomeAnalistaView;
use controllers\manufacturing\NavigationBar;


class HomeAnalista extends Controller
{
    protected $view;
    protected $model;

    public function __construct(View $view=null, Model $model=null)
    {
        $this->grantRole(ADMIN_ROLE_ID);
        $this->view = empty($view) ? $this->getView() : $view;
        $this->model = empty($model) ? $this->getModel() : $model;
        parent::__construct($this->view,$this->model);
    }

    protected function autorun($parameters = null)
    {
        $navigation = new NavigationBar();
        $this->checkPermissionsAndBind($navigation);


        $maintenance = new Maintenance();
        $this->bindController($maintenance);
    }
    public function getView(){
        return new HomeAnalistaView("/home_analista");
    }
    public function getModel(){
        return new HomeAnalistaModel();
    }
}
