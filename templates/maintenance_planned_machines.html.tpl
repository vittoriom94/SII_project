<!-- TODO: Cambiare i nomi delle colonne (date1,date2,date3, ecc) -->
<div class="table table-responsive">
    <table id="example" class="table table-bordered table-hover" width="100%">
        <thead>
        <tr>
            <th class="no-sort">&nbsp;</th>
            <th>{RES:Funzione}</th>
            <th>{RES:IDinterno}</th>
            <th>{RES:IDManutenzione}</th>
            <th>{RES:Datamanutenzione}</th>
            <th>{RES:Durata}</th>
            <th>{RES:TempoServizio}</th>
            <th>{RES:Descrizione}</th>
            <th>{RES:Tipomanutenzione}</th>
        </tr>
        </thead>
        <tbody>
        <!-- BEGIN Maintenances -->

        <tr>
            <td>&nbsp;</td>
            <td data-title="Nome Macchina" class="tabella1">{name}</td>
            <td data-title="ID Macchina" class="tabella1">{entity_id}</td>
            <td data-title="ID Manutenzione" class="tabella1">{id_maintenance}</td>
            <td data-title="Data manutenzione" class="tabella1">{maintenance_date}</td>
            <td data-title="Tempo manutenzione" class="tabella1">{maintenance_time} </td>
            <td data-title="Tempo servizio"  class="tabella1">{service_time}</td>
            <td data-title="Descrizione" class="tabella2">{maintenance_description}</td>
            <td data-title="Tipo manutenzione" class="tabella2">{maintenance_name}</td>
        </tr>
        <!-- END Maintenances -->
        </tbody>
        <tfoot>
        <tr>
            <td>&nbsp;</td>
            <th>{RES:Funzione}</th>
            <th>{RES:IDinterno}</th>
            <th>{RES:IDManutenzione}</th>
            <th>{RES:Datamanutenzione}</th>
            <th>{RES:Durata}</th>
            <th>{RES:TempoServizio}</th>
            <th>{RES:Descrizione}</th>
            <th>{RES:Tipomanutenzione}</th>
        </tr>
        </tfoot>
    </table>
</div>
