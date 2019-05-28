<?php

// Example 6.2.f: The view class CompositePage. This view loads the template
// composite_page and inject in it the welcome message returned by the model.

namespace views;

use framework\View;

class HomeAnalista extends View
{
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/home_analista";
        parent::__construct($tplName);


    }


}
