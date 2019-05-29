<?php

namespace views;

use framework\View;

class MaintenanceUnplannedMachines extends View
{
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/maintenance_unplanned_machines";
        parent::__construct($tplName);
    }

}
