<?php

namespace controllers;

use framework\Controller;
use framework\Model;
use framework\View;

use util\RoleUtils;
use models\Machines as MachinesModel;
use views\MachinesForm as FormView;
/**
 * Controller per l'inserimento di macchine nel database
 */

class MachinesForm extends Controller
{
    protected $view;
    protected $model;

    public function __construct(View $view=null, Model $model=null)
    {

        $this->view = empty($view) ? $this->getView() : $view;
        $this->model = empty($model) ? $this->getModel() : $model;
        $this->grantRole(RoleUtils::DBLOADER_ROLE_ID);
        $this->grantRole(RoleUtils::ISPETTORE_ROLE_ID);
        $this->restrictToRBAC();
        parent::__construct($this->view,$this->model);
    }

    protected function autorun($parameters = null)
    {
        $navigation = new NavigationBar();
        $this->checkPermissionsAndBind($navigation);
        $messaggio = "";
        $result = $this->model->getEntityTypes();
        $this->view->setDropdown($result);


        if (isset($_POST["risultato"])) {
            $this->edit($_POST["risultato"]);
        }


        if (isset($_POST["form_modifica"])) {
            $p = $this->valida();
            $funzione = $_POST["campo_funzione"];
            $id_interno = $_POST["campo_idinterno"];
            $this->model->editMachine($id_interno,$funzione,$p);
        }

        if (isset($_POST["form_inserisci"])) {
            $p = $this->valida();
            $id_interno = $_POST["campo_idinterno"];
            if($this->checkMachineExists($id_interno)){
                $messaggio = "Inserito gia";
            }
            else {
                $funzione = $_POST["campo_funzione"];
                $this->model->insertMachine($funzione, $p);
            }
        }
        if (isset($_POST["form_cancella"])) {

            if($this->checkMachineExists($_POST["campo_idinterno"])){
                $this->model->deleteMachine($_POST["campo_idinterno"]);
            }
            else{
                $messaggio= "Errore nella cancellazione, non esiste la macchina!";
            }
        }

        $this->view->deleteError($messaggio);
    }
    /*
     * Controlla che una macchina sia presente all'interno del database
     */
    protected function checkMachineExists($machine_id){
        $result = $this->model->queryMachineExists($machine_id);
        $exists = $result->fetch_object();
        if($exists){
            return TRUE;
        }
        return FALSE;

    }
    /*
     * Controlla i campi configurati dall'utente e salvali in un array
     */
    protected function valida(){
        $p[1] = $_POST["campo_idinterno"];

        if(isset($_POST["campo_indirizzoip"])){
            $p[2] = $_POST["campo_indirizzoip"];
        }
        if(isset($_POST["campo_costruttore"])){
            $p[3] = $_POST["campo_costruttore"];
        }
        if(isset($_POST["campo_modello"])){
            $p[4] = $_POST["campo_modello"];
        }
        if(isset($_POST["campo_costruttore"])){ // ERRORE?
            $p[5] = $_POST["campo_costruttore"];
        }
        if(isset($_POST["campo_anno"])){
            $p[6] = $_POST["campo_anno"];
        }
        if(isset($_POST["campo_marca"])){
            $p[7] = $_POST["campo_marca"];
        }
        if(isset($_POST["campo_modellocn"])){
            $p[8] = $_POST["campo_modellocn"];
        }
        if(isset($_POST["campo_versione"])){
            $p[9] = $_POST["campo_versione"];
        }
        if(isset($_POST["campo_noteversione"])){
            $p[10] = $_POST["campo_noteversione"];
        }
        if(isset($_POST["campo_notelavorazioni"])){
            $p[11] = $_POST["campo_notelavorazioni"];
        }
        if(isset($_POST["campo_numerotx"])){
            $p[12] = $_POST["campo_numerotx"];
        }
        if(isset($_POST["campo_rot"])){
            $p[13] = $_POST["campo_rot"];
        }
        return $p;
    }

    public function getView()
    {
        if (isset($_POST["risultato"])) {
            $view = new FormView("machines_form_modifica");

        }
        else {
            $view = new FormView("machines_form");
        }
        return $view;
    }

    public function getModel()
    {
        $model = new MachinesModel();
        return $model;
    }


    public function edit($result){

        $qr = $this->model->getMachine($result);

        $this->view->edit($qr);

    }


}
