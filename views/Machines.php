<?php
/**
 * Class Machines
 *
 * {ViewResponsability}
 *
 * @package controllers
 * @category Application View
 * @author  {AuthorName} - {AuthorEmail}
*/
namespace views;

use framework\View;

class Machines extends View
{

    /**
    * Object constructor.
    *
    * @param string|null $tplName The html template containing the static design.
    */
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/machines";
        parent::__construct($tplName);
    }
    public function setMachines(){
        //TO DO
    }
    
}
