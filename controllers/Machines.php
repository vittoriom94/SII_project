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
use framework\components\DataRepeater as DataRepeater;

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
        //$this->view = empty($view) ? $this->getView() : $view;
        //$this->model = empty($model) ? $this->getModel() : $model;
        //parent::__construct($this->view,$this->model);
        $this->model = $this->getModel();
        $this->view = $this->getView();
        parent::__construct($this->view,$this->model);
    }

    /**
    * Autorun method. Put your code here for running it after object creation.
    * @param mixed|null $parameters Parameters to manage
    *
    */
    protected function autorun($parameters = null)
    {   // DataRepeater passes the values retrieved by the model to the view in order
        // to populate the HTML block named “User”. The second parameter is null
        // because we wish to retrieve our data from the associative array $users
        // and not from a DB. The keys in the array must have the same name of placeholders  in the block.
       // With the help of the framework class Controller, the method render()
        // populates the the block ”User”.

        //$machinesList = $this->model->getMachines();
        //$repeater = new DataRepeater($this->view, null ,"Machines", $machinesList);
        //$repeater->render();
        //commento ora
        //$paginator = new PaginatorBootstrap();

        //$paginator->setName("Bottom");
        //$paginator->resultPerPage = 2;
        //$paginator->setModel($this->model);

        //$paginator->buildPagination();

        $machines = new DataRepeater($this->view, $this->model, "Machines", null);

        $this->bindComponent($machines);
        //$this->bindComponent($paginator);



    }

    /**
    * Inizialize the View by loading static design of /machines.html.tpl
    * managed by views\Machines class
    *
    */
    public function getView()
    {
        //$view = new MachinesView("/machines");
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
