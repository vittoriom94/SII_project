<?php
/**
 * Class Machines
 *
 * {ControllerResponsability}
 *
 * @package controllers
 * @category Application Controller
 * @author  {AuthorName} - {AuthorEmail}
*/
namespace controllers;

use framework\Controller;
use framework\Model;
use framework\View;
use models\Machines as MachinesModel;
use views\Machines as MachinesView;

class Machines extends Controller
{
    protected $view;
    protected $model;

    /**
    * Object constructor.
    *
    * @param View $view
    * @param Model $mode
    */
    public function __construct(View $view=null, Model $model=null)
    {
        $this->view = empty($view) ? $this->getView() : $view;
        $this->model = empty($model) ? $this->getModel() : $model;
        parent::__construct($this->view,$this->model);
    }

    /**
    * Autorun method. Put your code here for running it after object creation.
    * @param mixed|null $parameters Parameters to manage
    *
    */
    protected function autorun($parameters = null)
    {

    }

    /**
    * Inizialize the View by loading static design of /machines.html.tpl
    * managed by views\Machines class
    *
    */
    public function getView()
    {
        $view = new MachinesView("/machines");
        return $view;
    }

    /**
    * Inizialize the Model by loading models\Machines class
    *
    */
    public function getModel()
    {
        $model = new MachinesModel();
        return $model;
    }
}
