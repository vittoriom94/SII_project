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
    }

    /**
     * Autorun method. Put your code here for running it after object creation.
     * @param mixed|array|null $parameters Additional parameters to manage
     *
     */
    protected function autorun($parameters = null)
    {

    }

    public function getMachines(){
        //TO DO

        $this->sql = "SET @sql = NULL";
        $this->updateResultSet();
        $this->sql = "SELECT GROUP_CONCAT( ".
            "DISTINCT CONCAT('max(case when p.name = ''', name, ''' then ep.value end) ', name)) ".
            "INTO @sql ".
            "FROM property p ";
        $this->updateResultSet();
        $this->sql = "SET @sql = CONCAT('SELECT ".
            "e.descrizione, ".
            "', @sql, ' ".
            "FROM entity e ".
            "JOIN entities_properties ep ON e.id_entity = ep.entity_id ".
            "JOIN property p ON ep.property_id = p.id_property ".
            "GROUP BY e.descrizione')";
        $this->updateResultSet();
        $this->sql = "PREPARE stmt FROM @sql";
        $this->updateResultSet();
        $this->sql = "EXECUTE stmt";
        $this->updateResultSet();
        $machines = $this->getResultSet();
        $this->sql = "DEALLOCATE PREPARE stmt";
        $this->updateResultSet();
        return $machines;
    }
}