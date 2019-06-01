<?php

namespace views;

use framework\View;

class NavigationBar extends View
{
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/navigation_bar";
        parent::__construct($tplName);
    }

}
