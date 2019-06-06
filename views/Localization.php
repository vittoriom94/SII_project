<?php

namespace views;

use framework\View;

class Localization extends View
{
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "localization";
        parent::__construct($tplName);
    }
 
    public function setVarBodyMessage($value)
    {
        $this->setVar("BodyMessage",$value);
    }

}
