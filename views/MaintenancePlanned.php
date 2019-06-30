<?php

// Example 6.2.f: The view class CompositePage. This view loads the template
// composite_page and inject in it the welcome message returned by the model.

namespace views;

use framework\View;

class MaintenancePlanned extends View
{
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/maintenance_planned";
        parent::__construct($tplName);


    }


}
