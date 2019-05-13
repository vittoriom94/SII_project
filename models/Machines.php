<?php
/**
 * Class Machines
 *
 * {ModelResponsability}
 *
 * @package models
 * @category Application Model
 * @author  {AuthorName} - {AuthorEmail}
 */
namespace models;

use framework\Model;

class Machines extends Model
{
    /**
     * Object constructor.
     *
     */
    public function __construct()
    {
        parent::__construct();
        $this->sql =
            <<<SQL
SELECT
  e.descrizione,
  MAX(Case WHEN p.name = 'IDInterno' THEN ep.value END) IDInterno,
  MAX(Case WHEN p.name = 'IndirizzoIP' THEN ep.value END) IndirizzoIP,
  MAX(Case WHEN p.name = 'Costruttore' THEN ep.value END) Costruttore,
  MAX(Case WHEN p.name = 'Modello' THEN ep.value END) Modello,
  MAX(Case WHEN p.name = 'Anno' THEN ep.value END) Anno,
  MAX(Case WHEN p.name = 'MarcaCN' THEN ep.value END) MarcaCN,
  MAX(Case WHEN p.name = 'ModelloCN' THEN ep.value END) ModelloCN,
  MAX(Case WHEN p.name = 'Versione' THEN ep.value END) Versione,
  MAX(Case WHEN p.name = 'NoteVersione' THEN ep.value END) NoteVersione,
  MAX(Case WHEN p.name = 'Anno' THEN ep.value END) Anno,
  MAX(Case WHEN p.name = 'NomeLavorazioni' THEN ep.value END) NomeLavorazioni,
  MAX(Case WHEN p.name = 'NumeroTx' THEN ep.value END) NumeroTx,
  MAX(Case WHEN p.name = 'NumeroRot' THEN ep.value END) NumeroRot
FROM entity e
    JOIN entities_properties ep ON e.id_entity = ep.entity_id 
    JOIN property p ON ep.property_id = p.id_property 
GROUP BY e.descrizione
SQL;
        $this->updateResultSet();

    }

    /**
     * Autorun method. Put your code here for running it after object creation.
     * @param mixed|array|null $parameters Additional parameters to manage
     *
     */
    protected function autorun($parameters = null)
    {

    }


    public function insertMachine($function,$properties){
        $description = $function ." " . $properties[0];
        $type = intval($function);

        //$this->begin_transaction();
        $this->sql = "insert into entity (descrizione, entity_type_id) values ('$description', $type)";
        $this->updateResultSet();
        $this->sql = "set @id = LAST_INSERT_ID()";
        $this->updateResultSet();
        $this->sql = "insert into entities_properties (entity_id,property_id,`value`) values (@id, 1, '$properties[0]')";
        $this->updateResultSet();
        //$this->commit();
    }

}