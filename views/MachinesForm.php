<?php
/**
 * Class Login
 *
 * {ViewResponsability}
 *
 * @package controllers\common
 * @category Application View
 * @author  {AuthorName} - {AuthorEmail}
 */

namespace views;

use framework\View;

class MachinesForm extends View
{

    /**
     * Object constructor.
     *
     * @param string|null $tplName The html template containing the static design.
     */
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/Machines_form";
        parent::__construct($tplName);


    }


    public function deleteError($messaggio){

        $this->openBlock("Messaggio");
        $this->setVar("messaggio_errore_cancellazione",$messaggio);
        $this->parseCurrentBlock();
        $this->setBlock();

    }

    public function setDropdown($result){

        $this->openBlock("tendina");
        while ($temp = $result->fetch_object()) {
            $this->setVar("funzione", $temp->name);
            $this->setVar("id_funzione", $temp->id_entity_type);
            $this->parseCurrentBlock();
        }
        $this->setBlock();

    }


}
