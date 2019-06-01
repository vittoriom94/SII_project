<?php

namespace controllers;

use framework\Controller;
use framework\Model;
use framework\View;
use models\Home as HomeModel;
use views\Home as HomeView;
use controllers\NavigationBar;


class Home extends Controller
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
        $navigation = new NavigationBar();
        $this->checkPermissionsAndBind($navigation);


        $machine = new Machines();
        $this->bindController($machine);
    }
    public function getView(){
        return new HomeView("/home");
    }
    public function getModel(){
        return new HomeModel();
    }
}
