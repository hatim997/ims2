@extends('backend.layout.main') @section('content')
<section class="forms">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header mt-2">
                <h3 class="text-center">{{trans('Ledger Report')}}</h3>
            </div>
            {!! Form::open(['route' => 'report.legderByDate', 'method' => 'post']) !!}
            <div class="col-md-6 offset-md-3 mt-3 mb-3">
                <div class="form-group row">
                    <label class="d-tc mt-2"><strong>{{trans('Choose Your Date And insert OB')}}</strong> &nbsp;</label>
                    <div class="d-tc">
                        <div class="input-group">
                            <input type="text" class="daterangepicker-field form-control" value="{{$startDate}} To {{$endDate}}" required />
                            <input type="hidden" name="start_date" />
                            <input type="hidden" name="end_date" />

                            <input type="text" class="form-control" name="OB" />
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit">{{trans('file.submit')}}</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
    <div class="table-responsive mb-4">
        <table id="report-table" class="table table-hover">
            <thead>
                <tr>
                    <th class="not-exported"></th>
                              <th>{{trans('file.Date')}}</th>
                    <th>{{trans('file.Reference No')}} </th>
                    <th>{{trans('file.Description')}} </th>
                    <th>{{trans('file.credit_amount')}}</th>
                    <th>{{trans('file.debit_amount')}}</th>
                    <th>{{trans('file.Balance')}}</th>
                                    </tr>
            </thead>
            <tbody>


                @foreach($ledgerEntries as $entry)
                <?php // $sale = DB::table('sales')->find($payment->sale_id);
                    // $purchase = DB::table('purchases')->find($payment->purchase_id);
                    // $user = DB::table('users')->find($payment->user_id);
                // dd($ledgerEntries);
                $transaction = '';

                if($entry->sale_id){
                        $transactionn = App\Models\Sale::select('reference_no','customer_id')->find($entry->sale_id);

                        $transaction  =  App\Models\Customer::select('company_name')->find($transactionn->customer_id);
                        // dd($transaction);
                    }
                    elseif($entry->purchase_id){
                        $transactionn = App\Models\Purchase::select('reference_no','supplier_id')->find($entry->purchase_id);

                           $transaction = App\Models\Supplier::select('company_name')->find($transactionn->supplier_id);


                    }
                    if(str_contains($entry->reference_no, 'spr')  ) {
                        $balance += floatval($entry->amount);
                        $credit = floatval($entry->amount);
                        $debit = 0;
                    }
                    else {
                        $balance -= floatval($entry->amount);
                        $debit = floatval($entry->amount);
                        $credit = 0;
                    }
                ?>


                {{-- <tr>
                    <td></td> --}}
                    {{-- <td>{{date($general_setting->date_format, strtotime($payment->created_at->toDateString())) . ' '. $payment->created_at->toTimeString()}}</td> --}}
                       <tr {{$entry['created_at']->format($general_setting->date_format)}}>
                        <td></td>
                       <td>{{ $entry['created_at']->format($general_setting->date_format) }}</td>
                    <td>{{ $entry['reference_no'] }}</td>
                       <td>{{ $entry['description'] }}
                        @if($transaction)
                        {{$transaction->company_name}}

                    @endif
                       </td>

                       <td>{{number_format((float)$credit, $general_setting->decimal, '.', '')}}</td>
                    <td>{{number_format((float)$debit, $general_setting->decimal, '.', '')}}</td>
                    <td>{{number_format((float)$balance, $general_setting->decimal, '.', '')}}</td>
                </tr>
                @endforeach
            </tbody>
            <tfoot class="tfoot active">
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th>{{trans('file.Total')}}:</th>
                <th>{{number_format(0, $general_setting->decimal, '.', '')}}</th>

            </tfoot>
        </table>
    </div>
</section>

@endsection

@push('scripts')
<script type="text/javascript">
    $("ul#report").siblings('a').attr('aria-expanded','true');
    $("ul#report").addClass("show");
    $("ul#report li#legder-report-menu").addClass("active");

    $('#report-table').DataTable( {
        "order": [],
        pageLength: all,
        'language': {
            'lengthMenu': '_MENU_ {{trans("file.records per page")}}',
             "info":      '<small>{{trans("file.Showing")}} _START_ - _END_ (_TOTAL_)</small>',
            "search":  '{{trans("file.Search")}}',
            'paginate': {
                    'previous': '<i class="dripicons-chevron-left"></i>',
                    'next': '<i class="dripicons-chevron-right"></i>'
            }
        },
        'columnDefs': [
            {
                "orderable": false,
                'targets': [0,1,3]
            },
            {
                'render': function(data, type, row, meta){
                    if(type === 'display'){
                        data = '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>';
                    }

                   return data;
                },
                'checkboxes': {
                   'selectRow': true,
                   'selectAllRender': '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>'
                },
                'targets': [0]
            }
        ],
        'select': { style: 'multi',  selector: 'td:first-child'},
        'lengthMenu': [[10, 25, 50, -1], [10, 25, 50, "All"]],
        dom: '<"row"lfB>rtip',
        buttons: [
            {
                extend: 'pdf',
                text: '<i title="export to pdf" class="fa fa-file-pdf-o"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                },
                action: function(e, dt, button, config) {
                    datatable_sum(dt, true);
                    $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                    datatable_sum(dt, false);
                },
                footer:true
            },
            {
                extend: 'excel',
                text: '<i title="export to excel" class="dripicons-document-new"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                },
                action: function(e, dt, button, config) {
                    datatable_sum(dt, true);
                    $.fn.dataTable.ext.buttons.excelHtml5.action.call(this, e, dt, button, config);
                    datatable_sum(dt, false);
                },
                footer:true
            },
            {
                extend: 'csv',
                text: '<i title="export to csv" class="fa fa-file-text-o"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                },
                action: function(e, dt, button, config) {
                    datatable_sum(dt, true);
                    $.fn.dataTable.ext.buttons.csvHtml5.action.call(this, e, dt, button, config);
                    datatable_sum(dt, false);
                },
                footer:true
            },
            {
                extend: 'print',
                text: '<i title="print" class="fa fa-print"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                },
                action: function(e, dt, button, config) {
                    datatable_sum(dt, true);
                    $.fn.dataTable.ext.buttons.print.action.call(this, e, dt, button, config);
                    datatable_sum(dt, false);
                },
                footer:true
            },
            {
                extend: 'colvis',
                text: '<i title="column visibility" class="fa fa-eye"></i>',
                columns: ':gt(0)'
            }
        ],
        drawCallback: function () {
            var api = this.api();
            datatable_sum(api, false);
        }
    } );

    function datatable_sum(dt_selector, is_calling_first) {
        if (dt_selector.rows( '.selected' ).any() && is_calling_first) {
            var rows = dt_selector.rows( '.selected' ).indexes();

            $( dt_selector.column( 5 ).footer() ).html(dt_selector.cells( rows, 5, { page: 'current' } ).data().sum().toFixed({{$general_setting->decimal}}));
        }
        else {
            $( dt_selector.column( 5 ).footer() ).html(dt_selector.column( 5, {page:'current'} ).data().sum().toFixed({{$general_setting->decimal}}));
        }
    }

$(".daterangepicker-field").daterangepicker({
  callback: function(startDate, endDate, period){
    var start_date = startDate.format('YYYY-MM-DD');
    var end_date = endDate.format('YYYY-MM-DD');
    var title = start_date + ' to ' + end_date;
    $(this).val(title);
    $('input[name="start_date"]').val(start_date);
    $('input[name="end_date"]').val(end_date);
    // $('input[name="OB"]').val(OB);
  }
});

</script>
@endpush
