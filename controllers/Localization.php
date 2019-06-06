<?php
namespace controllers;
use framework\classes\Locale;
use framework\Controller;
use framework\Model;
use framework\View;
use models\Localization as LocalizationModel;
use views\Localization as LocalizationView;

class Localization extends Controller
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
        $locale = new Locale();
        $currentLocale = $locale->getCurrentLocale();
        $body = $this->model->getBody($_SESSION["CurrentLocale"]);
        $this->view->setVarBodyMessage($body);
    }

    public function getView()
    {
        $view = new LocalizationView("localization");
        return $view;
    }

    public function getModel()
    {
        $model = new LocalizationModel();
        return $model;
    }
}
