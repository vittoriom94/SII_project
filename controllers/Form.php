<?php
/**
 * Class Login
 *
 * Generic Login Form Controller
 *
 * @package controllers\common
 * @category Application Controller
 * @author  Rosario Carvello - rosario.carvello@gmail.com
 *
 * @uses \framework\User
 * @uses framework\classes\ChiperService
 *
 */

use framework\Controller;
use framework\Model;
use framework\View;


class Form extends Controller
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
     * Autorun method.
     *
     * @param mixed|null $parameters Parameters to manage
     *
     */
    protected function autorun($parameters = null)
    {
        if (isset($_POST["form_inserisci"])) {
            $funzione = $_POST["campo_funzione"];
            $idinterno = $_POST["campo_idinterno"];
            //$indirizzoip = $_POST["campo_indirizzoip"];
            //$indirizzoip = $_POST["campo_indirizzoip"];
            //$this->model->login($email,$password);
            // Funzione unico parametro il resto in un array
            $this->model->insertMachine($funzione,$idinterno);
        }
    }
    /**
     * Creates cookie for the login credentials if user
     * check remember me.
     *
     * Note:
     * It uses ChiperService for Cookie encryption.
     *
     * @uses ChiperService
     */


    /**
     * Inizialize the View by loading static design of /common/login.html.tpl
     * managed by views\common\Login class
     *
     */
    public function getView()
    {
        $view = new Form("views/Form");
        return $view;
    }

    /**
     * Inizialize the Model by loading models\common\Login class
     *
     */
    public function getModel()
    {
        $model = new Form();
        return $model;
    }

}
