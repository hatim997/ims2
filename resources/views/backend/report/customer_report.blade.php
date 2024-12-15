@extends('backend.layout.main') @section('content')
<section class="forms">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header mt-2">
                <h3 class="text-center">{{trans('file.Customer Report')}}</h3>
            </div>
            {!! Form::open(['route' => 'report.customer', 'method' => 'post']) !!}
            <div class="row mb-3">
                <div class="col-md-4 offset-md-2 mt-3">
                    <div class="form-group row">
                        <label class="d-tc mt-2"><strong>{{trans('file.Choose Your Date')}}</strong> &nbsp;</label>
                        <div class="d-tc">
                            <div class="input-group">
                                <input type="text" class="daterangepicker-field form-control" value="{{$start_date}} To {{$end_date}}" required />
                                <input type="hidden" name="start_date" value="{{$start_date}}" />
                                <input type="hidden" name="end_date" value="{{$end_date}}" />
                            </div>
                        </div>
                    </div>
                </div>
               
                <div class="col-md-2 mt-3">
                    <div class="form-group">
                        <button class="btn btn-primary" type="submit">{{trans('file.submit')}}</button>
                    </div>
                </div>
            </div>
            <input type="hidden" name="customer_id_hidden" value="{{$customer_id}}" />
            {!! Form::close() !!}
        </div>
    </div>
    <ul class="nav nav-tabs ml-4 mt-3" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" href="#customer-sale" role="tab" data-toggle="tab">{{trans('file.Sale')}}</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#customer-payments" role="tab" data-toggle="tab">{{trans('file.Payment')}}</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#customer-quotation" role="tab" data-toggle="tab">{{trans('file.Quotation')}}</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#customer-return" role="tab" data-toggle="tab">{{trans('file.return')}}</a>
      </li>
    </ul>

    <div class="tab-content">



        <div role="tabpanel" class="tab-pane fade" id="customer-quotation">
            <div class="table-responsive mb-4">
                <table id="quotation-table" class="table table-hover" style="width: 100%">
                    <thead>
                        <tr>
                            <th class="not-exported-quotation"></th>
                            <th>{{trans('file.Date')}}</th>
                            <th>{{trans('file.reference')}}</th>
                            <th>{{trans('file.Warehouse')}}</th>
                            <th>{{trans('file.Supplier')}}</th>
                            <th>{{trans('file.product')}} ({{trans('file.qty')}})</th>
                            <th>{{trans('file.grand total')}}</th>
                            <th>{{trans('file.Status')}}</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach($all_transaction_list as $key => $data)
                        {{-- {{dd($all_transaction_list->toArray())}} --}}
                        <?php
                            $transaction = '';
                            if($data->sale_id){
                                $transactionn = App\Models\Sale::select('reference_no','customer_id')->find($data->sale_id);
                            $transaction  =  App\Models\Customer::select('company_name')->find($transactionn->customer_id);
        
                            }
                            elseif($data->purchase_id){
                                $transactionn = App\Models\Purchase::select('reference_no','supplier_id')->find($data->purchase_id);
        
                                   $transaction = App\Models\Supplier::select('company_name')->find($transactionn->supplier_id);
        
        
                            }
                            if(str_contains($data->reference_no, 'spr') || str_contains($data->reference_no, 'prr') || str_contains($data->reference_no, 'mtr') || (str_contains($data->reference_no, 'pr')  && $data->to_account_id == $lims_account_data->id) ) {
                                $balance += floatval($data->amount);
                                $credit = floatval($data->amount);
                                $debit = 0;
                            }
                            else {
                                $balance -= floatval($data->amount);
                                $debit = floatval($data->amount);
                                $credit = 0;
                            }
        
                        ?>
                        <tr>
                            <td>{{$key}}</td>
                            {{-- <td data-sort="{{date('Y-m-d', strtotime($data->created_at))}}">{{date($general_setting->date_format, strtotime($data->created_at))}}</td> --}}
                            <td data-sort="{{date('Y-m-d', strtotime($data->created_at))}}">
                                {{date('d M Y', strtotime($data->created_at))}}
                            </td>
                            <td>{{$data->reference_no ?? $data->name}}</td>
                            @if($transaction)
                                <td>{{$transaction->company_name}}</td>
                            @else
                                <td>{{$data->type ?? $data->activity}}</td>
                            @endif
                            <td>{{number_format((float)$credit, $general_setting->decimal, '.', '')}}</td>
                            <td>{{number_format((float)$debit, $general_setting->decimal, '.', '')}}</td>
                            <td>{{number_format((float)$balance, $general_setting->decimal, '.', '')}}</td>
                        </tr>
                        @endforeach
                    </tbody>
                  
                </table>
            </div>
        </div>
    </div>
</section>

@endsection

@push('scripts')
<script type="text/javascript">
    $("ul#account").siblings('a').attr('aria-expanded','true');
    $("ul#account").addClass("show");
    $("ul#account #account-statement-menu").addClass("active");


    jQuery.extend(jQuery.fn.dataTableExt.oSort, {
        "extract-date-pre": function(value) {
            var date = $(value, 'span')[0].innerHTML;
            date = date.split('/');
            return Date.parse(date[1] + '/' + date[0] + '/' + date[2])
        },
        "extract-date-asc": function(a, b) {
            return ((a < b) ? -1 : ((a > b) ? 1 : 0));
        },
        "extract-date-desc": function(a, b) {
            return ((a < b) ? 1 : ((a > b) ? -1 : 0));
        }
    });

    $('#account-table').DataTable( {
        "order": [],
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
                type : 'extract-date',
                'targets': 0
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
                }
            },
            {
                extend: 'csv',
                text: '<i title="export to csv" class="fa fa-file-text-o"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                }
            },
            {
                extend: 'print',
                text: '<i title="print" class="fa fa-print"></i>',
                exportOptions: {
                    columns: ':visible:Not(.not-exported)',
                    rows: ':visible'
                }
            },
            {
                extend: 'colvis',
                text: '<i title="column visibility" class="fa fa-eye"></i>',
                columns: ':gt(0)'
            },
        ],
    } );
</script>
@endpush

