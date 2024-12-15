@extends('backend.layout.main') @section('content')
@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
@endif

<section>
    <div class="container-fluid">
        <div class="card">
            <div class="card-header mt-2">
                <h3 class="text-center">{{trans('Customer Balance Report')}}</h3>
            </div>
            {!! Form::open(['route' => 'report.customer_balance', 'method' => 'POST']) !!}
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
                {{-- <div class="col-md-4 mt-3">
                    <div class="form-group row">
                        <label class="d-tc mt-2"><strong>{{trans('file.Customer Group')}}</strong> &nbsp;</label>
                        <div class="d-tc">
                            <select id="customer_group_id" name="customer_group_id" class="selectpicker form-control" data-live-search="true" data-live-search-style="begins">
                                @foreach($lims_customer_group_list as $customer_group)
                                <option value="{{$customer_group->id}}">{{$customer_group->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div> --}}
                <div class="col-md-2 mt-3">
                    <div class="form-group">
                        <button class="btn btn-primary" type="submit">{{trans('file.submit')}}</button>
                    </div>
                </div>
            </div>
            {!! Form::close() !!}
        </div>
    </div>

    
        <!-- payment table -->
       
            <div class="table-responsive mb-4">
                <table id="account-table" class="table table-hover">
                    <thead>
                        <tr>
                           
                            <th>{{trans('file.customer')}}</th>
                            
                        
                            <th>Credit</th>
                            <th>Debit</th>
                            <th>Balance</th>
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
                            // dd($transaction);
        
                            }
                            elseif($data->purchase_id){
                                $transactionn = App\Models\Purchase::select('reference_no','supplier_id')->find($data->purchase_id);

                                $transaction = App\Models\Supplier::select('company_name')->find($transactionn->supplier_id);
                            // dd($transaction);

        
        
                            }
                            if(str_contains($data->reference_no, 'spr') || str_contains($data->reference_no, 'prr') ||  (str_contains($data->reference_no, 'pr') ) ) {
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
</section>

@endsection


@push('scripts')
<script type="text/javascript">
    $("ul#account").siblings('a').attr('aria-expanded','true');
    $("ul#account").addClass("show");
    $("ul#account #account-statement-menu").addClass("active");

    $(".daterangepicker-field").daterangepicker({
      callback: function(startDate, endDate, period){
        var start_date = startDate.format('YYYY-MM-DD');
        var end_date = endDate.format('YYYY-MM-DD');
        var title = start_date + ' To ' + end_date;
        $(this).val(title);
        $('input[name="start_date"]').val(start_date);
        $('input[name="end_date"]').val(end_date);
      }
    });

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

    var table =$('#account-table').DataTable( {
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
      
        // 'select': { style: 'multi',  selector: 'td:first-child'},
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

    function groupAndSumData() {
            var groupedData = {};

            // Loop through each row
            table.rows().every(function() {
                var row = this.data();
                var customer = row[0].trim(); // Customer name (from first column)
                var credit = parseFloat(row[1].replace(/,/g, '')) || 0;   // Credit value
                var debit = parseFloat(row[2].replace(/,/g, '')) || 0;    // Debit value
                var balance = parseFloat(row[3].replace(/,/g, '')) || 0;  // Balance value

                // If this customer doesn't exist in the grouped data, initialize them
                if (!groupedData[customer]) {
                    groupedData[customer] = { credit: 0, debit: 0, balance: 0 };
                }

                // Add Credit, Debit, and Balance to the grouped data
                groupedData[customer].credit += credit;
                groupedData[customer].debit += debit;
                groupedData[customer].balance += balance; // Sum the balance
            });

            // Clear the current table data
            table.clear();

            // Insert the grouped data back into the table
            Object.keys(groupedData).forEach(function(customer) {
                table.row.add([
                    customer, 
                    groupedData[customer].credit.toFixed(2), 
                    groupedData[customer].debit.toFixed(2),
                    groupedData[customer].balance.toFixed(2) // Updated balance
                ]);
            });

            // Redraw the table to apply changes
            table.draw();
        }

        // Call the function to group and sum the data
        groupAndSumData();
</script>
@endpush
