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
use util\SqlUtils;

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
  MAX(Case WHEN p.name = 'Anno2' THEN ep.value END) Anno2,
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
    /* Il result set è una singola riga che contiene 1 se il machine_id esiste, altrimenti 0 */
    public function queryMachineExists($machine_id){

        $this->sql = "SELECT EXISTS(SELECT * from entities_properties WHERE property_id=1 and `value`='$machine_id')";
        $this->updateResultSet();
        return $this->getResultSet();
    }
    public function insertMachine($function,$properties){
        $description = $function ." " . $properties[1];
        $type = intval($function);
        $queries = array();

        $query = "insert into entity (descrizione, entity_type_id) values ('$description', $type)";
        $queries[] = $query;
        $query = "set @id = LAST_INSERT_ID()";
        $queries[] = $query;
        $query = "insert into entities_properties (entity_id,property_id,`value`) values ";
        for ($i = 0;$i<max(array_keys($properties));$i++){
            if($properties[$i] != NULL){
                $query = $query . "(@id, $i, '$properties[$i]'),";
            }
        }
        $query = substr($query,0,-1);
        $queries[] = $query;

        SqlUtils::atomic($queries,$this);

    }

    public function deleteMachine($machine_id){

        $queries = array();
        $query = "select entity_id into @id from entities_properties where property_id=1 and `value`='$machine_id'";
        $queries[] = $query;
	    $query = "delete from entities_properties where entity_id=@id";
        $queries[] = $query;
        $query = "delete from entity where id_entity=@id";
        $queries[] = $query;
        SqlUtils::atomic($queries,$this);
    }

    public function editMachine($machine_id, $function, $properties){
        $this->deleteMachine($machine_id);
        $this->insertMachine($function,$properties);
    }

    public function getEntityTypes(){
        $this->sql = "select * from entity_type";
        $this->updateResultSet();
        return $this->getResultSet();
    }

    public function getTypeProperties($type){
        $type = intval($type);
        $this->sql = "select property_id from entities_type_properties where entity_type_id = $type";
        $this->updateResultSet();
        return $this->getResultSet();
    }

}