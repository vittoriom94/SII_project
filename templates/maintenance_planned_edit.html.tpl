<div>
<!-- BEGIN role_visibility -->
<style type="text/css" scoped>

    .ispettore {
        display: {ispettore};
    }
    .certificatore {
        display: {certificatore};
    }
    .time {
        box-sizing: border-box;
        height: 2em;
    }
</style>
<!-- END role_visibility -->
<form method="post" id="form" name="form">
    <!-- BEGIN form_fields -->
    <div class="form-group">
        <label for="maintenance_types">{RES:Tipomanutenzione}:</label>
        <select class="form-control" id="maintenance_types" name="maintenance_types" required>
            <!-- BEGIN maintenance_types -->
            <option value="{id_maintenance_type}">{maintenance_type}</option>
            <!-- END maintenance_types -->
        </select>

        <label>{RES:Selectaduration}:</label><br>
        <input type="number" min="0" max="200" value="0" class="time" id="days" name="days" required><input type="time" step="1" class="time" id="hours" name="hours" required><br>
        <label for="maintenance_date">{RES:Datamanutenzione}: </label><input type="date" id="maintenance_date" name="maintenance_date" class="form-control">
        <label for="descrizione">{RES:Descrizione}: </label><input type="text" class="form-control" id="descrizione" name="descrizione" value="" required>
    </div>

    <div class="form-group ispettore">
        <label for="id_macchina"> {RES:IDinterno}:</label>
        <select class="ispettore form-control" id="id_macchina" name="id_macchina">
            <!-- BEGIN tendina -->
            <option value="{id_macchina}">{macchina}</option>
            <!-- END tendina -->
        </select>

        <input type="submit" class="ispettore btn btn-primary" name="new_maintenance" value="{RES:Inserisci} {RES:Manutenzione}">
    </div>
    <!-- END form_fields -->

    <div class="form-group certificatore">
        <label for="id_maintenances"> {RES:IDManutenzione}:</label>
        <select class="edit form-control" id="id_maintenances" name="id_maintenances" onChange="fillFields(this)">
            <option disabled selected value> -- {RES:choose} -- </option>
            <!-- BEGIN maintenances -->
            <option value="{id_maintenances}">{maintenances}</option>
            <!-- END maintenances -->
        </select>
    </div>


    <div class="form-group certificatore">

        <input type="submit" class="certificatore btn btn-primary" name="edit_maintenance" value="{RES:Update}{RES:Manutenzione}">
    </div>

</form>
</div>
<script>
    document.getElementById('maintenance_date').valueAsDate = new Date();

</script>