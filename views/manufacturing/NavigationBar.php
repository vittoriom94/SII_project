<?php

namespace views\manufacturing;

use framework\View;

class NavigationBar extends View
{
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/manufacturing/navigation_bar";
        parent::__construct($tplName);
    }

}
