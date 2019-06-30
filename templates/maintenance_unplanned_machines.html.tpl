
    <div class="table table-responsive">
        <table id="example" class="table table-bordered table-hover" width="100%">
            <thead>
            <tr>
                <th class="no-sort">&nbsp;</th>
                <th>Nome</th>
                <th>ID macchina</th>
                <th>ID Guasto</th>
                <th>Data Guasto</th>
                <th>Inizio riparazione</th>
                <th>Fine riparazione</th>
                <th>Descrizione</th>
                <th>Dipartimento</th>
                <th>Operazione</th>
                <th>Status</th>
            </tr>
            </thead>
            <tbody>
            <!-- BEGIN Maintenances -->

            <tr>
                <td>&nbsp;</td>
                <td data-title="Nome Macchina" class="tabella1">{name}</td>
                <td data-title="ID macchina" class="tabella1">{entity_id}</td>
                <td data-title="ID Guasto" class="tabella1">{id_failure_machine}</td>
                <td data-title="Data Guasto" class="tabella1"> {date_failure} </td>
                <td data-title="Inizio riparazione" class="tabella1">{start_date}</td>
                <td data-title="Fine riparazione" class="tabella1">{end_date} </td>
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
                <th>Nome</th>
                <th>ID macchina</th>
                <th>ID Guasto</th>
                <th>Data Guasto</th>
                <th>Inizio riparazione</th>
                <th>Fine riparazione</th>
                <th>Descrizione</th>
                <th>Dipartimento</th>
                <th>Operazione</th>
                <th>Status</th>
            </tr>
            </tfoot>
        </table>
    </div>
