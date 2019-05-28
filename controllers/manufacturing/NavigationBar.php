<?php

namespace controllers\manufacturing;

use framework\Controller;
use views\manufacturing\NavigationBar as NavigationBarView;

class NavigationBar extends Controller
{

    protected function autorun($parameters = null)
    {

        $this->view = new NavigationBarView();
    }
}
