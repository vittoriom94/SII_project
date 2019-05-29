<?php

namespace views;

use framework\View;

class Maintenance extends View
{
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/maintenance";
        parent::__construct($tplName);
    }

}
