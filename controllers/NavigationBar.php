<?php

namespace controllers;

use framework\Controller;
use views\NavigationBar as NavigationBarView;

class NavigationBar extends Controller
{

    protected function autorun($parameters = null)
    {
        $this->view = new NavigationBarView();
    }
}
