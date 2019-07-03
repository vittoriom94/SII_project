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

    public function edit($result){

        $temp = $result->fetch_object();

        $this->openBlock("edit");
        $this->setVar("campo_selezionato", $temp->descrizione);
        $this->setVar("id_interno", $temp->IDInterno);
        $this->setVar("campo_costruttore", $temp->Costruttore);
        $this->setVar("campo_indirizzoip", $temp->IndirizzoIP);
        $this->setVar("campo_modello", $temp->Modello);
        $this->setVar("campo_marca", $temp->MarcaCN);
        $this->setVar("campo_modellocn", $temp->ModelloCN);
        $this->setVar("campo_versione", $temp->Versione);
        $this->setVar("campo_noteversione", $temp->NoteVersione);
        $this->setVar("campo_notelavorazioni", $temp->NomeLavorazioni);
        $this->setVar("campo_numerotx", $temp->NumeroTx);
        $this->setVar("campo_numeroroot", $temp->NumeroRot);
        $this->setVar("campo_anno", $temp->Anno);
        $this->parseCurrentBlock();
        $this->setBlock();




    }



}
