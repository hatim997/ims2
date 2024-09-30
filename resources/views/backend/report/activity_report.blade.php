@extends('backend.layout.main') @section('content')
    <section class="forms">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header mt-2">
                    <h3 class="text-center">OVIATION HEALTHCARE</h3>
                    <h3 class="text-center">WEEKLY ACTIVITY</h3>

                </div>
            </div>
        </div>
{{--        <ul class="nav nav-tabs ml-4 mt-3" role="tablist">--}}
{{--            <li class="nav-item">--}}
{{--                <a class="nav-link active" href="#supplier-purchase" role="tab" data-toggle="tab">{{trans('file.Purchase')}}</a>--}}
{{--            </li>--}}
{{--            <li class="nav-item">--}}
{{--                <a class="nav-link" href="#supplier-payments" role="tab" data-toggle="tab">{{trans('file.Payment')}}</a>--}}
{{--            </li>--}}
{{--            <li class="nav-item">--}}
{{--                <a class="nav-link" href="#supplier-return" role="tab" data-toggle="tab">{{trans('file.Return')}}</a>--}}
{{--            </li>--}}
{{--            <li class="nav-item">--}}
{{--                <a class="nav-link" href="#supplier-quotation" role="tab" data-toggle="tab">{{trans('file.Quotation')}}</a>--}}
{{--            </li>--}}
{{--        </ul>--}}
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane fade show active" id="supplier-purchase">
                <div class="table-responsive mb-4">
                    <table id="purchase-table" class="table table-hover" style="width: 100%">
                        <thead>
                        <tr>
                            <th>{{trans('S.No')}}</th>
                            <th>{{trans('Date')}}</th>
                            <th>{{trans('Name')}}</th>
                            <th>{{trans('Speciality/Spot')}}</th>
                            <th>{{trans('Mobile#')}}</th>
                            <th>{{trans('Products')}}</th>
                            <th>{{trans('Activity')}}</th>
                            <th>{{trans('Amount')}}</th>
                        </tr>
                        </thead>
                        <tbody>
                        @php
                        $total=0;
                        @endphp
                        @foreach($data as $key=>$dt)
                            @php
                                $total+=$dt->amount;
                            @endphp

                            <tr>
                                <td>{{$key+1}}</td>
                                <td>{{$dt->_date}}</td>
                                <td>{{$dt->name}}</td>
                                <td>{{$dt->speciality}}</td>
                                <td>{{$dt->mobile}}</td>
                                <td>{{$dt->products}}</td>
                                <td>{{$dt->activity}}</td>
                                <td>{{$dt->amount}}</td>
                            </tr>
                        @endforeach

                        </tbody>

                        <tfoot class="tfoot active">
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th>{{trans('file.Total')}}</th>
                            <th></th>
                            <th></th>
                            <th>{{$total}}</th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </section>



@endsection

@push('scripts')
    <script type="text/javascript">
        $("ul#report").siblings('a').attr('aria-expanded','true');
        $("ul#report").addClass("show");
        $("ul#report #supplier-report-menu").addClass("active");

        {{--var start_date = <?php echo json_encode($start_date); ?>;--}}
        {{--var end_date = <?php echo json_encode($end_date); ?>;--}}
        {{--var supplier_id = <?php echo json_encode($supplier_id); ?>;--}}



        $('#purchase-table').DataTable({
            order:[['1', 'desc']],
            'select': { style: 'multi',  selector: 'td:first-child'},
            'lengthMenu': [[10, 25, 50, -1], [10, 25, 50, "All"]],
            dom: '<"row"lfB>rtip',
            rowId: 'ObjectID',
            buttons: [
                {
                    extend: 'pdf',
                    text: '<i title="export to pdf" class="fa fa-file-pdf-o"></i>',
                    exportOptions: {
                        columns: ':visible:Not(.not-exported-sale)',
                        rows: ':visible'
                    },
                    action: function(e, dt, button, config) {
                        datatable_sum_sale(dt, true);
                        $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                        datatable_sum_sale(dt, false);
                    },
                    footer:true
                },
                {
                    extend: 'csv',
                    text: '<i title="export to csv" class="fa fa-file-text-o"></i>',
                    exportOptions: {
                        columns: ':visible:Not(.not-exported-sale)',
                        rows: ':visible'
                    },
                    action: function(e, dt, button, config) {
                        datatable_sum_sale(dt, true);
                        $.fn.dataTable.ext.buttons.csvHtml5.action.call(this, e, dt, button, config);
                        datatable_sum_sale(dt, false);
                    },
                    footer:true
                },
                {
                    extend: 'print',
                    text: '<i title="print" class="fa fa-print"></i>',
                    exportOptions: {
                        columns: ':visible:Not(.not-exported-sale)',
                        rows: ':visible'
                    },
                    action: function(e, dt, button, config) {
                        datatable_sum_sale(dt, true);
                        $.fn.dataTable.ext.buttons.print.action.call(this, e, dt, button, config);
                        datatable_sum_sale(dt, false);
                    },
                    footer:true
                },
                {
                    extend: 'colvis',
                    text: '<i title="column visibility" class="fa fa-eye"></i>',
                    columns: ':gt(0)'
                },
            ],
            drawCallback: function () {
                var api = this.api();
                datatable_sum_sale(api, false);
            }
        });

        function datatable_sum_sale(dt_selector, is_calling_first) {
            if (dt_selector.rows( '.selected' ).any() && is_calling_first) {
                var rows = dt_selector.rows( '.selected' ).indexes();

                $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 7, { page: 'current' } ).data().sum().toFixed({{$general_setting->decimal}}));
            }
            else {
                $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 7, { page: 'current' } ).data().sum().toFixed({{$general_setting->decimal}}));
            }
        }

    </script>
@endpush
