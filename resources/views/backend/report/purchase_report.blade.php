@extends('backend.layout.main') @section('content')

    @if(empty($product_name))
        <div class="alert alert-danger alert-dismissible text-center">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>{{'No Data exist between this date range!'}}</div>
    @endif

    <section class="forms">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header mt-2">
                    <h3 class="text-center">Sale Report</h3>
                </div>
                {!! Form::open(['route' => 'report.purchase', 'method' => 'post']) !!}
                <div class="row mb-3">
                    <div class="col-md-4 offset-md-2 mt-3">
                        <div class="form-group row">
                            <label class="d-tc mt-2"><strong>{{trans('file.Choose Your Date')}}</strong> &nbsp;</label>
                            <div class="d-tc">
                                <div class="input-group">
                                    <input type="text" class="daterangepicker-field form-control"
                                           value="{{$start_date}} To {{$end_date}}" required/>
                                    <input type="hidden" name="start_date" value="{{$start_date}}"/>
                                    <input type="hidden" name="end_date" value="{{$end_date}}"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-3">
                        <div class="form-group row">
                            <label class="d-tc mt-2"><strong>{{trans('file.Choose Warehouse')}}</strong> &nbsp;</label>
                            <div class="d-tc">
                                <input type="hidden" name="warehouse_id_hidden" value="{{$warehouse_id}}"/>
                                <select id="warehouse_id" name="warehouse_id" class="selectpicker form-control"
                                        data-live-search="true" data-live-search-style="begins">
                                    <option value="0">{{trans('file.All Warehouse')}}</option>
                                    @foreach($lims_warehouse_list as $warehouse)
                                        <option value="{{$warehouse->id}}">{{$warehouse->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 mt-3">
                        <div class="form-group">
                            <button class="btn btn-primary" type="submit">{{trans('file.submit')}}</button>
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
                    <th>Date</th>
                    <th>CRANDOM</th>
                    <th>FALNEU</th>
                    <th>INFADOM</th>
                    <th>IROHEME</th>
                    <th>PAGECAL</th>
                    <th>TOTAL</th>
                    <th>VALUE</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>12/08/2023</td>
                    <td>12</td>
                    <td>2</td>
                    <td>25</td>
                    <td>09</td>
                    <td>91200</td>
                    <td>1291200</td>
                    <td>1291200</td>
                </tr>
                <tr>
                    <td>12/08/2023</td>
                    <td>12</td>
                    <td>2</td>
                    <td>25</td>
                    <td>09</td>
                    <td>91200</td>
                    <td>1291200</td>
                    <td>1291200</td>
                </tr>
                <tr>
                    <td>12/08/2023</td>
                    <td>12</td>
                    <td>2</td>
                    <td>25</td>
                    <td>09</td>
                    <td>91200</td>
                    <td>1291200</td>
                    <td>1291200</td>
                </tr>
                <tr>
                    <td>12/08/2023</td>
                    <td>12</td>
                    <td>2</td>
                    <td>25</td>
                    <td>09</td>
                    <td>91200</td>
                    <td>1291200</td>
                    <td>1291200</td>
                </tr>
                <tr>
                    <td>12/08/2023</td>
                    <td>12</td>
                    <td>2</td>
                    <td>25</td>
                    <td>09</td>
                    <td>91200</td>
                    <td>1291200</td>
                    <td>1291200</td>
                </tr>
                <tr>
                    <td>12/08/2023</td>
                    <td>12</td>
                    <td>2</td>
                    <td>25</td>
                    <td>09</td>
                    <td>91200</td>
                    <td>1291200</td>
                    <td>1291200</td>
                </tr>
                </tbody>
                <tfoot>
                <th>DISTRIBUTOR</th>
                <th>0</th>
                <th>0</th>
                <th>0</th>
                <th>0</th>
                <th>0</th>
                <th>0</th>
                <th>0</th>
                </tfoot>
            </table>
            <table id="report-table" class="table table-hover">
                <thead>
                <tr>
                    <th class="not-exported"></th>
                    <th>{{trans('file.Product Name')}}</th>
                    <th>{{trans('file.Product Name')}}</th>
                    <th>{{trans('file.Purchased Amount')}}</th>
                    <th>{{trans('file.Purchased Qty')}}</th>
                    <th>{{trans('file.In Stock')}}</th>
                </tr>
                </thead>
                <tbody>
                @if(!empty($product_name))
                    @foreach($product_id as $key => $pro_id)
                        <tr>
                            <td>{{$key}}</td>
                            <td>{{$product_name[$key]}}</td>
                                <?php
                                if ($warehouse_id == 0) {
                                    if ($variant_id[$key]) {
                                        $purchased_cost = DB::table('product_purchases')->where([
                                            ['product_id', $pro_id],
                                            ['variant_id', $variant_id[$key]]
                                        ])->whereDate('created_at', '>=', $start_date)
                                            ->whereDate('created_at', '<=', $end_date)
                                            ->sum('total');

                                        $product_purchase_data = DB::table('product_purchases')->where([
                                            ['product_id', $pro_id],
                                            ['variant_id', $variant_id[$key]]
                                        ])->whereDate('created_at', '>=', $start_date)
                                            ->whereDate('created_at', '<=', $end_date)
                                            ->get();
                                    } else {
                                        $purchased_cost = DB::table('product_purchases')->where('product_id', $pro_id)->whereDate('created_at', '>=', $start_date)->whereDate('created_at', '<=', $end_date)->sum('total');

                                        $product_purchase_data = DB::table('product_purchases')->where('product_id', $pro_id)->whereDate('created_at', '>=', $start_date)->whereDate('created_at', '<=', $end_date)->get();
                                    }
                                } else {
                                    if ($variant_id[$key]) {
                                        $purchased_cost = DB::table('purchases')
                                            ->join('product_purchases', 'purchases.id', '=', 'product_purchases.purchase_id')->where([
                                                ['product_purchases.product_id', $pro_id],
                                                ['product_purchases.variant_id', $variant_id[$key]],
                                                ['purchases.warehouse_id', $warehouse_id]
                                            ])->whereDate('purchases.created_at', '>=', $start_date)->whereDate('purchases.created_at', '<=', $end_date)->sum('total');
                                        $product_purchase_data = DB::table('purchases')
                                            ->join('product_purchases', 'purchases.id', '=', 'product_purchases.purchase_id')->where([
                                                ['product_purchases.product_id', $pro_id],
                                                ['product_purchases.variant_id', $variant_id[$key]],
                                                ['purchases.warehouse_id', $warehouse_id]
                                            ])->whereDate('purchases.created_at', '>=', $start_date)->whereDate('purchases.created_at', '<=', $end_date)->get();
                                    } else {
                                        $purchased_cost = DB::table('purchases')
                                            ->join('product_purchases', 'purchases.id', '=', 'product_purchases.purchase_id')->where([
                                                ['product_purchases.product_id', $pro_id],
                                                ['purchases.warehouse_id', $warehouse_id]
                                            ])->whereDate('purchases.created_at', '>=', $start_date)->whereDate('purchases.created_at', '<=', $end_date)->sum('total');
                                        $product_purchase_data = DB::table('purchases')
                                            ->join('product_purchases', 'purchases.id', '=', 'product_purchases.purchase_id')->where([
                                                ['product_purchases.product_id', $pro_id],
                                                ['purchases.warehouse_id', $warehouse_id]
                                            ])->whereDate('purchases.created_at', '>=', $start_date)->whereDate('purchases.created_at', '<=', $end_date)->get();
                                    }
                                }
                                $purchased_qty = 0;
                                foreach ($product_purchase_data as $product_purchase) {
                                    $unit = DB::table('units')->find($product_purchase->purchase_unit_id);
                                    if ($unit->operator == '*') {
                                        $purchased_qty += $product_purchase->qty * $unit->operation_value;
                                    } elseif ($unit->operator == '/') {
                                        $purchased_qty += $product_purchase->qty / $unit->operation_value;
                                    }
                                }
                                ?>
                            <td>{{number_format((float)$purchased_cost, $general_setting->decimal, '.', '')}}</td>
                            <td>{{$purchased_qty}}</td>
                            <td>{{$product_qty[$key]}}</td>
                        </tr>
                    @endforeach
                @endif
                </tbody>
                <tfoot>
                <th></th>
                <th>Total</th>
                <th>0</th>
                <th>0</th>
                <th>0</th>
                <th>0</th>
                </tfoot>
            </table>
        </div>
    </section>

@endsection

@push('scripts')
    <script type="text/javascript">
        $("ul#report").siblings('a').attr('aria-expanded', 'true');
        $("ul#report").addClass("show");
        $("ul#report #purchase-report-menu").addClass("active");

        $('#warehouse_id').val($('input[name="warehouse_id_hidden"]').val());
        $('.selectpicker').selectpicker('refresh');

        $('#report-table').DataTable({
            "order": [],
            'language': {
                'lengthMenu': '_MENU_ {{trans("file.records per page")}}',
                "info": '<small>{{trans("file.Showing")}} _START_ - _END_ (_TOTAL_)</small>',
                "search": '{{trans("file.Search")}}',
                'paginate': {
                    'previous': '<i class="dripicons-chevron-left"></i>',
                    'next': '<i class="dripicons-chevron-right"></i>'
                }
            },
            'columnDefs': [
                {
                    "orderable": false,
                    'targets': 0
                },
            ],
            'select': {style: 'multi', selector: 'td:first-child'},
            'lengthMenu': [[10, 25, 50, -1], [10, 25, 50, "All"]],
            dom: '<"row"lfB>rtip',
            buttons: [
                {
                    extend: 'pdf',
                    text: '<i title="export to pdf" class="fa fa-file-pdf-o"></i>',
                    exportOptions: {
                        columns: ':visible:not(.not-exported)',
                        rows: ':visible'
                    },
                    action: function (e, dt, button, config) {
                        datatable_sum(dt, true);
                        $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                        datatable_sum(dt, false);
                    },
                    footer:true,
                customize: function (doc) {
            // Add logo
            doc.content.splice(0, 0, {        
                image: logoBase64,
            width: 100, // Adjust width as needed
            alignment: 'center'              
            
            });

            // Add OVATION HEALTH CARE title
            doc.content.splice(1, 0, {
                text: '',
                style: 'header',
                alignment: 'center',
                margin: [0, 10, 0, 10] // Adjust margins as needed
            });

            // Add custom report name
            doc.content.splice(2, 0, {
                text: 'Purchase Reprot',
                style: 'subheader',
                alignment: 'center',
                margin: [0, 0, 0, 20] // Adjust margins as needed
            });

            // Define custom styles
            doc.styles = {
                ...doc.styles, // Preserve existing styles
                header: {
                    fontSize: 16,
                    bold: true,
                    color: 'green' // Adjust color as needed
                },
                subheader: {
                    fontSize: 12,
                    bold: false,
                    color: 'black'
                }
            };
        }
                },
                {
                    extend: 'excel',
                    text: '<i title="export to excel" class="dripicons-document-new"></i>',
                    exportOptions: {
                        columns: ':visible:not(.not-exported)',
                        rows: ':visible'
                    },
                    action: function (e, dt, button, config) {
                        datatable_sum(dt, true);
                        $.fn.dataTable.ext.buttons.excelHtml5.action.call(this, e, dt, button, config);
                        datatable_sum(dt, false);
                    },
                    footer: true
                },
                {
                    extend: 'csv',
                    text: '<i title="export to csv" class="fa fa-file-text-o"></i>',
                    exportOptions: {
                        columns: ':visible:not(.not-exported)',
                        rows: ':visible'
                    },
                    action: function (e, dt, button, config) {
                        datatable_sum(dt, true);
                        $.fn.dataTable.ext.buttons.csvHtml5.action.call(this, e, dt, button, config);
                        datatable_sum(dt, false);
                    },
                    footer: true
                },
                {
                    extend: 'print',
                    text: '<i title="print" class="fa fa-print"></i>',
                    exportOptions: {
                        columns: ':visible:not(.not-exported)',
                        rows: ':visible'
                    },
                    action: function (e, dt, button, config) {
                        datatable_sum(dt, true);
                        $.fn.dataTable.ext.buttons.print.action.call(this, e, dt, button, config);
                        datatable_sum(dt, false);
                    },
                    footer: true
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
        });

        function datatable_sum(dt_selector, is_calling_first) {
            if (dt_selector.rows('.selected').any() && is_calling_first) {
                var rows = dt_selector.rows('.selected').indexes();

                $(dt_selector.column(2).footer()).html(dt_selector.cells(rows, 2, {page: 'current'}).data().sum().toFixed({{$general_setting->decimal}}));
                $(dt_selector.column(3).footer()).html(dt_selector.cells(rows, 3, {page: 'current'}).data().sum());
                $(dt_selector.column(4).footer()).html(dt_selector.cells(rows, 4, {page: 'current'}).data().sum().toFixed({{$general_setting->decimal}}));
            } else {
                $(dt_selector.column(2).footer()).html(dt_selector.column(2, {page: 'current'}).data().sum().toFixed({{$general_setting->decimal}}));
                $(dt_selector.column(3).footer()).html(dt_selector.column(3, {page: 'current'}).data().sum());
                $(dt_selector.column(4).footer()).html(dt_selector.column(4, {page: 'current'}).data().sum().toFixed({{$general_setting->decimal}}));
            }
        }

        $(".daterangepicker-field").daterangepicker({
            callback: function (startDate, endDate, period) {
                var start_date = startDate.format('YYYY-MM-DD');
                var end_date = endDate.format('YYYY-MM-DD');
                var title = start_date + ' To ' + end_date;
                $(this).val(title);
                $('input[name="start_date"]').val(start_date);
                $('input[name="end_date"]').val(end_date);
            }
        });

    </script>
@endpush
