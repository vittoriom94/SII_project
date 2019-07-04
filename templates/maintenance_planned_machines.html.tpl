<!-- TODO: Cambiare i nomi delle colonne (date1,date2,date3, ecc) -->
<div class="table table-responsive">
    <table id="example" class="table table-bordered table-hover" width="100%">
        <thead>
        <tr>
            <th class="no-sort">&nbsp;</th>
            <th>{RES:NomeMacchina}</th>
            <th>Id macchina</th>
            <th>ID Manutenzione</th>
            <th>Data manutenzione</th>
            <th>Tempo manutenzione</th>
            <th>Tempo servizio</th>
            <th>Descrizione</th>
            <th>Tipo manutenzione</th>
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
            <th>Nome Macchina</th>
            <th>Id macchina</th>
            <th>ID Manutenzione</th>
            <th>Data manutenzione</th>
            <th>Tempo manutenzione</th>
            <th>Tempo servizio</th>
            <th>Descrizione</th>
            <th>Tipo manutenzione</th>
        </tr>
        </tfoot>
    </table>
</div>
