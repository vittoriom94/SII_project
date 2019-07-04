<!DOCTYPE html>
<html>
<head>
    <title>{RES:ManutenzioneProgrammata}</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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

{Controller:NavigationBar}

<div class="container-fluid">

    {Controller:MaintenancePlannedMachines}
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col">
        </div>
        <div class="col">
            {Controller:MaintenancePlannedEdit}
        </div>
        <div class="col">
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
                "scrollX": true,
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


    function fillFields(selectElement){
        let selectedElement = selectElement.options[selectElement.selectedIndex].textContent;
        let table = document.getElementById("example");
        let columnIndex = 3;

        for (var i = 0, row; row = table.rows[i]; i++) {

            if (row.cells[columnIndex].textContent === selectedElement) {


                let machineID = row.cells[2].textContent;
                let maintenanceDate = row.cells[4].textContent;
                let maintenanceTime = row.cells[5].textContent;
                let description = row.cells[7].textContent;
                let maintenanceType = row.cells[8].textContent;

                selectTime(maintenanceTime);
                selectMaintenanceType(maintenanceType);
                selectMachineID(machineID);
                document.getElementById("maintenance_date").value = maintenanceDate;
                document.getElementById("descrizione").value = description;

            }

        }
    }

    function selectTime(maintenanceTime){
        let daysElement = document.getElementById("days");
        let timeElement = document.getElementById("hours");
        let totalHours = maintenanceTime.split(":")[0];
        let days = Math.floor(totalHours/24);
        let remainingHours = totalHours % 24;

        let splitTime =  maintenanceTime.trim(" ").split(":");
        if((remainingHours+"").length < 2){
            remainingHours = "0"+remainingHours;
        }
        splitTime[0] = remainingHours;
        splitTime = splitTime.join(":");
        daysElement.value = days;
        timeElement.value = splitTime;



    }

    function selectMaintenanceType(maintenancetype){
        let selectOptions = document.getElementById("maintenance_types").options;
        for(var i = 0;i< selectOptions.length;i++){
            let option = selectOptions[i];
            if(option.textContent === maintenancetype){
                selectOptions.selectedIndex = i;
            }
        }
    }

    function selectMachineID(machineID){
        let selectOptions = document.getElementById("id_macchina").options;
        for(var i = 0;i< selectOptions.length;i++){
            let option = selectOptions[i];
            if(option.value === machineID){
                selectOptions.selectedIndex = i;
            }
        }
    }


</script>

</body>

</html>
