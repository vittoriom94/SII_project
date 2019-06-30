<?php

namespace views;

use framework\View;

class MaintenancePlannedMachines extends View
{
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/maintenance_planned_machines";
        parent::__construct($tplName);
    }

}
