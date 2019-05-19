<?php

namespace controllers;

use framework\Controller;
use framework\Model;
use framework\View;

use models\Machines as MachinesModel;
use views\Form as FormView;


class Form extends Controller
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
        if (isset($_POST["form_inserisci"])) {
            $p = $this->valida();
            $funzione = $_POST["campo_funzione"];
            $this->model->insertMachine($funzione,$p);
        }
    }


    protected function valida(){
        $p[0] = $_POST["campo_idinterno"];

        if(isset($_POST["campo_indirizzoip"])){
            $p[1] = $_POST["campo_indirizzoip"];
        }
        if(isset($_POST["campo_costruttore"])){
            $p[2] = $_POST["campo_costruttore"];
        }
        if(isset($_POST["campo_modello"])){
            $p[3] = $_POST["campo_modello"];
        }
        if(isset($_POST["campo_costruttore"])){
            $p[4] = $_POST["campo_costruttore"];
        }
        if(isset($_POST["campo_anno"])){
            $p[5] = $_POST["campo_anno"];
        }
        if(isset($_POST["campo_marcacn"])){
            $p[6] = $_POST["campo_marcacn"];
        }
        if(isset($_POST["campo_modellocn"])){
            $p[7] = $_POST["campo_modellocn"];
        }
        if(isset($_POST["campo_versione"])){
            $p[8] = $_POST["campo_versione"];
        }
        if(isset($_POST["campo_noteversione"])){
            $p[9] = $_POST["campo_noteversione"];
        }
        if(isset($_POST["campo_notelavorazioni"])){
            $p[10] = $_POST["campo_notelavorazioni"];
        }
        if(isset($_POST["campo_numerotx"])){
            $p[11] = $_POST["campo_numerotx"];
        }
        if(isset($_POST["campo_root"])){
            $p[12] = $_POST["campo_root"];
        }
        return $p;
    }

    public function getView()
    {
        $view = new FormView("Form");
        return $view;
    }

    public function getModel()
    {
        $model = new MachinesModel();
        return $model;
    }

}
