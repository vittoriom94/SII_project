<!DOCTYPE html>
<html>
<head>
    <title>CERVELLO</title>

    <!-- DataTable core CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.18/af-2.3.3/cr-1.5.0/fc-3.2.5/fh-3.1.4/kt-2.5.0/rg-1.1.0/rr-1.2.4/sc-2.0.0/sl-1.3.0/datatables.min.css"/>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
    <![endif]-->
</head>



<body>
<!-- INIZIO NAVIGATION BAR -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Dropdown
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Disabled</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
<!-- FINE NAVIGATION BAR -->
<div class="container">
    <h2>Table info</h2>
    <div class="table table-responsive">
        <table id="example" class="table table-bordered table-hover" width="100%">
            <thead>
            <tr>
                <th>Funzione</th>
                <th>ID interno</th>
                <th>Indirizzo IP</th>
                <th>Costruttore</th>
                <th>Modello</th>
                <th>Anno</th>
                <th>Marca CN</th>
                <th>Modello CN</th>
                <th>Versione</th>
                <th>Note Versione</th>
                <!--<th>Anno</th>-->
                <th>Nome Lavorazioni</th>
                <th>Numero Tx</th>
                <th>Numero Rot</th>
            </tr>
            </thead>
            <tbody>
            <!-- BEGIN Machines -->

            <tr>
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
                <!--<td data-title="Anno2" name="tabella1">{year2}</td>-->
                <td data-title="WorkName" class="tabella2">{NomeLavorazioni}</td>
                <td data-title="TextNumber" class="tabella2">{NumeroTx}</td>
                <td data-title="TextNumber" class="tabella2">{NumeroRot}</td>
            </tr>
            <!-- END Machines -->
            <tfoot>
                <tr>
                    <td class = "text-center" colspan="9">{PaginatorBootstrap:Bottom}</td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>
<!-- Loader -->
<div id="divLoading"></div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.18/af-2.3.3/cr-1.5.0/fc-3.2.5/fh-3.1.4/kt-2.5.0/rg-1.1.0/rr-1.2.4/sc-2.0.0/sl-1.3.0/datatables.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script type="text/javascript">

    $(document).ready(function() {
        var dataTableAction = true;
        if (dataTableAction) {

            // Adds columns search inputs
            $('#example thead th').each( function (i) {
                if (i>0) {
                    var title = $(this).text();
                    $(this).html('<input class="rounded" type="search" placeholder="' + title + '" />');
                }
            } );

            var table =  $('#example').dataTable({
                "dom_no": '<"toolbar">lfrtip',
                "responsive":   true,
                "paging":       true,
                "columnDefs":   [
                    {
                        "orderable": false,
                        "targets":0,
                    }

                ],
                order: [],
                "language": {
                    "lengthMenu":           "_MENU_",
                    "zeroRecords":          "nessun record",
                    "info":                 "_PAGE_ di _PAGES_",
                    "infoEmpty":            "nessun record",
                    "search":               "",
                    "searchPlaceholder":    "Cerca",
                    "infoFiltered":         "(risultati di _MAX_ totali)",
                    "paginate":             {
                        "first":    "Primo",
                        "last":     "Ultimo",
                        "next":     "Succ.",
                        "previous": "Prec.",
                    }
                    ,
                }
            });

            // Add custom buttons actions
            // $("div.toolbar").html('Custom tool bar! Text/images etc.');
            $("#example_length").append('&nbsp; <a href="#" class="btn btn-outline-primary btn-sm"><i class="fa fa-plus" aria-hidden="true"></i></a>');

            // Enable columns search actions
            var table = $('#example').DataTable();
            table.columns().every( function () {
                var that = this;
                $( 'input', this.header() ).on('keyup change search', function () {
                    if ( that.search() !== this.value ) {
                        that
                            .search( this.value )
                            .draw();
                    }
                } );
            });

        }
    });

</script>

</body>
</html>