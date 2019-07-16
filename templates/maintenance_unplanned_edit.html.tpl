<div>
<!-- BEGIN role_visibility -->
<style type="text/css" scoped>

    .operatore {
        display: {operatore};
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



    <div class="form-group operatore">
        <label for="id_macchina"> {RES:Macchina}:</label>
        <select class="operatore form-control" id="id_macchina" name="id_macchina">
            <!-- BEGIN tendina -->
            <option name="{macchina}" value="{id_macchina}">{descrizione_macchina}</option>
            <!-- END tendina -->
        </select>
        <label for="reparto">{RES:Reparto}: </label><input type="text" class="operatore form-control" id="reparto" name="reparto" value="" required>
        <label for="operazione">{RES:Operazione}: </label><input type="text" class="operatore form-control" id="operazione" name="operazione" value="" required>
        <label for="descrizione">{RES:Descrizione}: </label><input type="text" class="operatore form-control" id="descrizione" name="descrizione" value="" required>
        <label for="failure_date">{RES:DataGuasto}: </label><input type="date" id="failure_date" name="failure_date" class="operatore form-control">
        <input type="submit" class="operatore btn btn-primary" name="new_failure" value="{RES:Inserisci} {RES:Guasto}">
    </div>
</form>
<form method="post" id="form" name="form">
    <div class="form-group edit">
        <label for="id_guasto"> {RES:IDGuasto}:</label>
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
            <option value="internal">{RES:Interno}</option>
            <option value="external">{RES:Esterno}</option>
        </select>

        <label for="start_date">{RES:DataInizioRiparazione}: </label><input type="date" id="start_date" name="start_date" class="analista form-control">
        <input type="submit" class="analista btn btn-primary" name="start_repair" value="{RES:IniziaRiparazione}">
    </div>

    <div class="form-group certificatore">

        <label for="resolved">
            {RES:Esito}:
        </label>
        <select class="certificatore form-control" id="resolved" name="resolved">
            <option value="3">{RES:GuastoRisolto}</option>
            <option value="4">{RES:Impossibile}</option>
        </select>

        <label for="end_date">{RES:DataFineRiparazione}: </label><input type="date" id="end_date" name="end_date" class="certificatore form-control">
        <input type="submit" class="certificatore btn btn-primary" name="end_repair" value="{RES:ConcludiRiparazione}">
    </div>

</form>
</div>
<script>
    document.getElementById('failure_date').valueAsDate = new Date();
    document.getElementById('start_date').valueAsDate = new Date();
    document.getElementById('end_date').valueAsDate = new Date();
</script>