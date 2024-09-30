@extends('backend.layout.main') @section('content')
    @if(session()->has('not_permitted'))
        <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
    @endif

    <section class="forms">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header mt-2">
                    <h3 class="text-center">OVIATION HEALTHCARE</h3>
                    <h3 class="text-center">WEEKLY ACTIVITY</h3>

                </div>
                {!! Form::open(['route' => 'report.activity-report', 'method' => 'get']) !!}
                <div class="row mb-3 product-report-filter">
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
                {!! Form::close() !!}
            </div>
        </div>
        <div class="table-responsive">
            <table id="product-report-table" class="table table-hover" style="width: 100%">
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
                <th></th>
                <th></th>
                <th></th>
                <th>{{trans('file.Total')}}</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                </tfoot>
            </table>
        </div>
    </section>

@endsection

@push('scripts')
    <script type="text/javascript">

        $('.selectpicker').selectpicker('refresh');

        $(".daterangepicker-field").daterangepicker({
            callback: function(startDate, endDate, period){
                var start_date = startDate.format('YYYY-MM-DD');
                var end_date = endDate.format('YYYY-MM-DD');
                var title = start_date + ' To ' + end_date;
                $(this).val(title);
                $(".product-report-filter input[name=start_date]").val(start_date);
                $(".product-report-filter input[name=end_date]").val(end_date);
            }
        });

        var start_date = $(".product-report-filter input[name=start_date]").val();
        var end_date = $(".product-report-filter input[name=end_date]").val();

        $('#product-report-table').DataTable({
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
