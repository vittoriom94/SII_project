
    <div class="table table-responsive">
        <table id="example" class="table table-bordered table-hover" width="100%">
            <thead>
            <tr>
                <th class="no-sort">&nbsp;</th>
                <th>{RES:Funzione}</th>
                <th>{RES:IDinterno}</th>
                <th>{RES:IndirizzoIP}</th>
                <th>{RES:Costruttore}</th>
                <th>{RES:Modello}</th>
                <th>{RES:Anno}</th>
                <th>{RES:MarcaCN}</th>
                <th>{RES:ModelloCN}</th>
                <th>{RES:Versione}</th>
                <th>{RES:NoteVersione}</th>
                <th>{RES:Anno2}</th>
                <th>{RES:NomeLavorazioni}</th>
                <th>{RES:NumeroTx}</th>
                <th>{RES:NumeroRot}</th>
            </tr>
            </thead>
            <tbody>
            <!-- BEGIN Machines -->

            <tr>
                <form id="prova" name="prova" method="post" action="machines_form">
                    <input type="hidden" id="risultato" name="risultato" value="">
                </form>
                <td><button type="button" onclick="myFunction(this.parentElement.parentElement)" class="btn btn-link" ><img src="/SII_project/bottone.jpg" width="30" height="30" ></button></td>
                <td data-title="Funzione" class="tabella1">{descrizione}</td>
                <td data-title="InternalID" class="tabella1">{IDInterno}</td>
                <td data-title="IndirizzoIP" class="tabella1"> {IndirizzoIP} </td>
                <td data-title="Manufacturer" class="tabella1">{Costruttore}</td>
                <td data-title="Model" class="tabella1">{Modello} </td>
                <td data-title="Year"  class="tabella1">{Anno}</td>
                <td data-title="Brand" class="tabella2">{MarcaCN}</td>
                <td data-title="ModelCN" class="tabella2">{ModelloCN}</td>
                <td data-title="Version" class="tabella2" >{Versione}</td>
                <td data-title="VersionNote" class="tabella2">{NoteVersione}</td>
                <td data-title="Anno2" name="tabella1">{Anno2}</td>
                <td data-title="WorkName" class="tabella2">{NomeLavorazioni}</td>
                <td data-title="TextNumber" class="tabella2">{NumeroTx}</td>
                <td data-title="TextNumber" class="tabella2">{NumeroRot}</td>

            </tr>
            <!-- END Machines -->
            </tbody>
            <tfoot>
            <tr>
                <td></td>
                <th>{RES:Funzione}</th>
                <th>{RES:IDinterno}</th>
                <th>{RES:IndirizzoIP}</th>
                <th>{RES:Costruttore}</th>
                <th>{RES:Modello}</th>
                <th>{RES:Anno}</th>
                <th>{RES:MarcaCN}</th>
                <th>{RES:ModelloCN}</th>
                <th>{RES:Versione}</th>
                <th>{RES:NoteVersione}</th>
                <th>{RES:Anno2}</th>
                <th>{RES:NomeLavorazioni}</th>
                <th>{RES:NumeroTx}</th>
                <th>{RES:NumeroRot}</th>

            </tr>
            </tfoot>
        </table>
        <script>
            function myFunction(element) {
                 var figli = element.children;
                 var figlio = figli[4];
                 var valore = figlio.innerHTML;
                 var form = document.getElementById("prova");
                 var input = document.getElementById("risultato");
                 input.value = valore;
                 form.submit();
                 //document.forms["prova"].risultato.value = valore;
                 //document.forms["prova"].submit();
            }
        </script>