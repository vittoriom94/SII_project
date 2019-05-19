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

class Form extends View
{

    /**
     * Object constructor.
     *
     * @param string|null $tplName The html template containing the static design.
     */
    public function __construct($tplName = null)
    {
        if (empty($tplName))
            $tplName = "/Form";
        parent::__construct($tplName);


    }


    public function errore_cancellazione($messaggio){

        $this->openBlock("Messaggio");
        $this->setVar("messaggio_errore_cancellazione",$messaggio);
        $this->parseCurrentBlock();
        $this->setBlock();

    }

    public function set_tendina($result){

        $this->openBlock("tendina");
        while ($temp = $result->fetch_object()) {
            $this->setVar("funzione", $temp->name);
            $this->setVar("id_funzione", $temp->id_entity_type);
            $this->parseCurrentBlock();
        }
        $this->setBlock();

    }


}
