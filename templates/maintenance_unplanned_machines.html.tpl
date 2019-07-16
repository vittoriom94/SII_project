
    <div class="table table-responsive">
        <table id="example" class="table table-bordered table-hover" width="100%">
            <thead>
            <tr>
                <th class="no-sort">&nbsp;</th>
                <th>{RES:Funzione}</th>
                <th>{RES:IDinterno}</th>
                <th>{RES:Descrizionemacchina}</th>
                <th>{RES:IDGuasto}</th>
                <th>{RES:DataGuasto}</th>
                <th>{RES:DataInizioRiparazione}</th>
                <th>{RES:DataFineRiparazione}</th>
                <th>Team</th>
                <th>{RES:Descrizione}</th>
                <th>{RES:Reparto}</th>
                <th>{RES:Operazione}</th>
                <th>Status</th>
            </tr>
            </thead>
            <tbody>
            <!-- BEGIN Maintenances -->

            <tr>
                <td>&nbsp;</td>
                <td data-title="Nome Macchina" class="tabella1">{name}</td>
                <td data-title="ID macchina" class="tabella1">{entity_id}</td>
                <td data-title="Descrizione macchina" class="tabella1">{description_machine}</td>
                <td data-title="ID Guasto" class="tabella1">{id_failure_machine}</td>
                <td data-title="Data Guasto" class="tabella1"> {date_failure} </td>
                <td data-title="Inizio riparazione" class="tabella1">{start_date}</td>
                <td data-title="Fine riparazione" class="tabella1">{end_date} </td>
                <td data-title="Team"  class="tabella1">{team}</td>
                <td data-title="Descrizione"  class="tabella1">{description}</td>
                <td data-title="Dipartimento" class="tabella2">{department}</td>
                <td data-title="Operazione" class="tabella2">{operation}</td>
                <td data-title="Status" class="tabella2" >{status_name}</td>
            </tr>
            <!-- END Maintenances -->
            </tbody>
            <tfoot>
            <tr>
                <td>&nbsp;</td>
                <th>{RES:Funzione}</th>
                <th>{RES:IDinterno}</th>
                <th>{RES:Descrizionemacchina}</th>
                <th>{RES:IDGuasto}</th>
                <th>{RES:DataGuasto}</th>
                <th>{RES:DataInizioRiparazione}</th>
                <th>{RES:DataFineRiparazione}</th>
                <th>Team</th>
                <th>{RES:Descrizione}</th>
                <th>{RES:Reparto}</th>
                <th>{RES:Operazione}</th>
                <th>Status</th>
            </tr>
            </tfoot>
        </table>
    </div>
