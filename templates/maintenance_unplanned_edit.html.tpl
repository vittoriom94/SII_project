<div>
<!-- BEGIN role_visibility -->
<style type="text/css" scoped>

    .ispettore {
        display: {ispettore};
    }
    .analista {
        display: {analista};
    }
    .certificatore {
        display: {certificatore};
    }
    .edit {
        display: {edit};
    }
</style>
<!-- END role_visibility -->
<form method="post" id="form" name="form">



    <div class="form-group ispettore">
        <label for="id_macchina"> ID Macchina:</label>
        <select class="ispettore form-control" id="id_macchina" name="id_macchina">
            <!-- BEGIN tendina -->
            <option value="{id_macchina}">{macchina}</option>
            <!-- END tendina -->
        </select>
        <label for="reparto">Reparto: </label><input type="text" class="ispettore form-control" id="reparto" name="reparto" value="" required>
        <label for="operazione">Operazione: </label><input type="text" class="ispettore form-control" id="operazione" name="operazione" value="" required>
        <label for="descrizione">Descrizione: </label><input type="text" class="ispettore form-control" id="descrizione" name="descrizione" value="" required>
        <label for="failure_date">Data guasto: </label><input type="date" id="failure_date" name="failure_date" class="ispettore form-control">
        <input type="submit" class="ispettore btn btn-primary" name="new_failure" value="Inserisci guasto">
    </div>
</form>
<form method="post" id="form" name="form">
    <div class="form-group edit">
        <label for="id_guasto"> ID Guasto:</label>
        <select class="edit form-control" id="id_guasto" name="id_guasto">
            <!-- BEGIN guasti -->
            <option value="{id_guasto}">{guasto}</option>
            <!-- END guasti -->
        </select>
    </div>


    <div class="form-group analista">

        <label for="team">
            Team:
        </label>
        <select class="analista form-control" id="team" name="team">
            <option value="internal">Interno</option>
            <option value="external">Esterno</option>
        </select>

        <label for="start_date">Data inizio riparazione: </label><input type="date" id="start_date" name="start_date" class="analista form-control">
        <input type="submit" class="analista btn btn-primary" name="start_repair" value="Inizia riparazione">
    </div>

    <div class="form-group certificatore">

        <label for="resolved">
            Risoluzione:
        </label>
        <select class="certificatore form-control" id="resolved" name="resolved">
            <option value="3">Guasto risolto</option>
            <option value="4">Impossibile</option>
        </select>

        <label for="end_date">Data fine riparazione: </label><input type="date" id="end_date" name="end_date" class="certificatore form-control">
        <input type="submit" class="certificatore btn btn-primary" name="end_repair" value="Concludi riparazione">
    </div>

</form>
</div>
<script>
    document.getElementById('failure_date').valueAsDate = new Date();
    document.getElementById('start_date').valueAsDate = new Date();
    document.getElementById('end_date').valueAsDate = new Date();
</script>