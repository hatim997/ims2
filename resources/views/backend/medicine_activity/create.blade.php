@extends('backend.layout.main') @section('content')
    @if($errors->has('title'))
        <div class="alert alert-danger alert-dismissible text-center">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ $errors->first('title') }}</div>
    @endif
    @if($errors->has('image'))
        <div class="alert alert-danger alert-dismissible text-center">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ $errors->first('image') }}</div>
    @endif
    @if(session()->has('message'))
        <div class="alert alert-success alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('message') }}</div>
    @endif
    @if(session()->has('not_permitted'))
        <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
    @endif

    <section>
        <div class="container-fluid">
            <div class="card">
                <div class="card-header mt-2">
                    <h3 class="text-center">Medicine Activity</h3>
                </div>
        {!! Form::open(['route' => 'medicine_activity.index', 'method' => 'get']) !!}
        <div class="row ml-1 mt-2">
            <div class="col-md-3">
                <div class="form-group">
                    <label><strong>{{trans('file.Date')}}</strong></label>
                    <input type="text" class="daterangepicker-field form-control" value="{{$starting_date}} To {{$ending_date}}" required />
                    <input type="hidden" name="starting_date" value="{{$starting_date}}" />
                    <input type="hidden" name="ending_date" value="{{$ending_date}}" />
                </div>
            </div>
          
          
          
            <div class="col-md-2 mt-3">
                <div class="form-group">
                    <button class="btn btn-primary" id="filter-btn" type="submit">{{trans('file.submit')}}</button>
                </div>
            </div>
        </div>
        {!! Form::close() !!}

    </div>
</div>







        <div class="container-fluid">
            <button class="btn btn-info" data-toggle="modal" data-target="#createModal"><i class="dripicons-plus"></i> {{trans('Add Activity')}} </button>&nbsp;
        </div>
        <div class="table-responsive">
            <table id="biller-table" class="table">
                <thead>
                <tr>
                    <th class="not-exported"></th>
                       <th>Date</th>
                    <th>Name</th>
                    <th>Speciality</th>
                    <th>Products</th>
                    <th>Activity</th>
                    <th>Account</th>
                    <th>Amount</th>
                    <th class="not-exported">{{trans('file.action')}}</th>
                </tr>
                
                </thead>
                <tbody>
               
{{-- {{dd($lims_brand_all)}} --}}
                @foreach($lims_brand_all as $key=>$brand)
           
                    <tr data-id="{{$brand->id}}">
                        <td></td>
                         <td>{{ date('j M Y', strtotime($brand->_date));}}</td>
                        <td>{{ $brand->name }}</td>
                        <td>{{ $brand->speciality }}</td>
                        <td>{{ $brand->product }}</td>
                        <td>{{ $brand->activity }}</td>
                        <td>{{ $brand->account_name }}</td>
                        <td>{{ number_format((float) $brand->amount); }}</td>
                        <td>
                            <div class="btn-group">
                                <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{trans('file.action')}}
                                    <span class="caret"></span>
                                    <span class="sr-only">Toggle Dropdown</span>
                                </button>
                                <ul class="dropdown-menu edit-options dropdown-menu-right dropdown-default" user="menu">
                                    <li><button type="button" data-id="{{$brand->m_id}}" class="open-EditbrandDialog btn btn-link" data-toggle="modal" data-target="#editModal"><i class="dripicons-document-edit"></i>  {{trans('file.edit')}}</button></li>
                                    <li class="divider"></li>
                                    {{ Form::open(['route' => ['medicine_activity.destroy', $brand->m_id], 'method' => 'DELETE'] ) }}
                                    <li>
                                        <button type="submit" class="btn btn-link" onclick="return confirm('Are you sure want to delete?')"><i class="dripicons-trash"></i> {{trans('file.delete')}}</button>
                                    </li>
                                    {{ Form::close() }}
                                </ul>
                            </div>
                        </td>
                    </tr>
                @endforeach
           
                </tbody>
                  <tfoot class="tfoot active">
                        <th></th>
                        <th>{{trans('file.Total')}}</th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tfoot>
            </table>
        </div>
    </section>

    <div id="createModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
        <div role="document" class="modal-dialog">
            <div class="modal-content">
                {!! Form::open(['route' => 'medicine_activity.store', 'method' => 'post', 'files' => true]) !!}
                <div class="modal-header">
                    <h5 id="exampleModalLabel" class="modal-title">Add Activity</h5>
                    <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"><i class="dripicons-cross"></i></span></button>
                </div>
                <div class="modal-body">
                    <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
                   
                    <div class="form-group">
                                        <label>Doctor *</strong> </label>
                                        <div class="input-group">
                                          <select name="doc_id" required class="selectpicker form-control" data-live-search="true" data-live-search-style="begins" title="Select Doctor...">
                                            @foreach($lims_docter as $category)
                                                <option value="{{$category->id}}">{{$category->name}}</option>
                                            @endforeach
                                          </select>
                                      </div>
                                      <span class="validation-msg"></span>
                                    </div>
                    <div class="form-group">
                        <label>activity *</label>
                        {{Form::text('activity',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'activity'))}}
                    </div>
                    <div class="form-group">
                        <label>Date *</label>
                        {{Form::date('_date',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'Date'))}}
                    </div>
                         <div class="form-group">
                                        <label> Account *</strong> </label>
                                        <div class="input-group">
                                          <select name="account_id" required class="selectpicker form-control" data-live-search="true" data-live-search-style="begins" title="Select Account...">
                                            @foreach($lims_account as $category)
                                                <option value="{{$category->id}}">{{$category->name}}</option>
                                            @endforeach
                                          </select>
                                      </div>
                                      <span class="validation-msg"></span>
                                    </div>
                     <div class="form-group">
                        <label>Amount *</label>
                        {{Form::text('amount',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'Amount'))}}
                    </div>
                     <div class="form-group">
                        <label>Remark </label>
                        {{Form::text('remark',null,array('class' => 'form-control', 'placeholder' => 'remark'))}}
                    </div>

                    <div class="form-group">
                        <input type="submit" value="{{trans('file.submit')}}" class="btn btn-primary">
                    </div>
                </div>
                {{ Form::close() }}
            </div>
        </div>
    </div>


    <div id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
        <div role="document" class="modal-dialog">
            <div class="modal-content">
                {{ Form::open(['route' => ['medicine_activity.update', 1], 'method' => 'PUT', 'files' => true] ) }}
                <div class="modal-header">
                    <h5 id="exampleModalLabel" class="modal-title"> {{trans('file.Update Brand')}}</h5>
                    <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"><i class="dripicons-cross"></i></span></button>
                </div>
                <div class="modal-body">
                    <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
                      <div class="form-group">
                        <label>Date *</label>
                        {{Form::date('_date',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'Date'))}}
                    </div>
                    <div class="form-group">
                        <label> Account *</strong> </label>
                        <div class="input-group">
                          <select name="account_id" required class="selectpicker form-control" data-live-search="true" data-live-search-style="begins" title="Select Account...">
                            @foreach($lims_account as $category)
                                <option value="{{$category->id}}">{{$category->name}}</option>
                            @endforeach
                          </select>
                      </div>
                      <span class="validation-msg"></span>
                    </div>
                    <div class="form-group">
                        <label>activity *</label>
                        {{Form::text('activity',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'activity'))}}
                    </div>
                     <div class="form-group">
                        <label>Amount *</label>
                        {{Form::text('amount',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'Amount'))}}
                    </div>
                      <div class="form-group">
                        <label>remark </label>
                        {{Form::text('remark',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'remark'))}}
                    </div>
                    <input type="hidden" name="brand_id">
                    <div class="form-group">
                        <input type="submit" value="{{trans('file.submit')}}" class="btn btn-primary">
                    </div>
                </div>
                {{ Form::close() }}
            </div>
        </div>
    </div>



@endsection

@push('scripts')
    <script type="text/javascript">

        $("ul#setting").siblings('a').attr('aria-expanded','true');
        $("ul#setting").addClass("show");
        $("ul#setting #brand-menu").addClass("active");

        var brand_id = [];
        var user_verified = <?php echo json_encode(env('USER_VERIFIED')) ?>;

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $(".daterangepicker-field").daterangepicker({
      callback: function(startDate, endDate, period){
        var starting_date = startDate.format('YYYY-MM-DD');
        var ending_date = endDate.format('YYYY-MM-DD');
        var title = starting_date + ' To ' + ending_date;
        $(this).val(title);
        $('input[name="starting_date"]').val(starting_date);
        $('input[name="ending_date"]').val(ending_date);
      }
    });
        $( "#select_all" ).on( "change", function() {
            if ($(this).is(':checked')) {
                $("tbody input[type='checkbox']").prop('checked', true);
            }
            else {
                $("tbody input[type='checkbox']").prop('checked', false);
            }
        });

        $('.edit-btn').on('click', function() {
            alert("I  am here");
            $("#editModal input[name='account_no']").val( $(this).data('account_no') );
            $("#editModal input[name='name']").val( $(this).data('name') );
            $("#editModal input[name='initial_balance']").val( $(this).data('initial_balance') );
            $("#editModal input[name='account_id']").val( $(this).data('id') );
            $("#editModal textarea[name='note']").val( $(this).data('note') );
        });

        $("#export").on("click", function(e){
            e.preventDefault();
            var brand = [];
            $(':checkbox:checked').each(function(i){
                brand[i] = $(this).val();
            });
            $.ajax({
                type:'POST',
                url:'/exportbrand',
                data:{

                    brandArray: brand
                },
                success:function(data){
                    alert('Exported to CSV file successfully! Click Ok to download file');
                    window.location.href = data;
                }
            });
        });

        $(document).ready(function() {
            $(document).on('click', '.open-EditbrandDialog', function() {
                var url = "medicine_activity/"
                var id = $(this).data('id').toString();
                url = url.concat(id).concat("/edit");

                $.get(url, function(data) {
                    $("input[name='brand_id']").val(data['id']);
                    $("input[name='activity']").val(data['activity']);
                    $("input[name='amount']").val(data['amount']);
                      $("input[name='remark']").val(data['remark']);
                    $("input[name='_date']").val(data['_date']);
                  

                });
            });
        });

        $('#biller-table').DataTable( {
            "order": [],
             pageLength: 50,
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
                    'targets': [0, 3]
                },
             
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
                        rows: ':visible',
                        stripHtml: false
                    },
                     action: function(e, dt, button, config) {
                    datatable_sum_purchases(dt, true);
                    $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                    datatable_sum_purchases(dt, false);
                },
                footer:true
                    
                    // customize: function(doc) {
                    //     for (var i = 1; i < doc.content[1].table.body.length; i++) {
                    //         if (doc.content[1].table.body[i][0].text.indexOf('<img src=') !== -1) {
                    //             var imagehtml = doc.content[1].table.body[i][0].text;
                    //             var regex = /<img.*?src=['"](.*?)['"]/;
                    //             var src = regex.exec(imagehtml)[1];
                    //             var tempImage = new Image();
                    //             tempImage.src = src;
                    //             var canvas = document.createElement("canvas");
                    //             canvas.width = tempImage.width;
                    //             canvas.height = tempImage.height;
                    //             var ctx = canvas.getContext("2d");
                    //             ctx.drawImage(tempImage, 0, 0);
                    //             var imagedata = canvas.toDataURL("image/png");
                    //             delete doc.content[1].table.body[i][0].text;
                    //             doc.content[1].table.body[i][0].image = imagedata;
                    //             doc.content[1].table.body[i][0].fit = [30, 30];
                    //         }
                    //     }
                    // },
                    
                },
                
                {
                    extend: 'excel',
                    text: '<i title="export to excel" class="dripicons-document-new"></i>',
                    exportOptions: {
                        columns: ':visible:Not(.not-exported)',
                        rows: ':visible',
                        format: {
                            body: function ( data, row, column, node ) {
                                if (column === 0 && (data.indexOf('<img src=') !== -1)) {
                                    var regex = /<img.*?src=['"](.*?)['"]/;
                                    data = regex.exec(data)[1];
                                }
                                return data;
                            }
                        }
                    },
                     action: function(e, dt, button, config) {
                    datatable_sum_purchases(dt, true);
                    $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                    datatable_sum_purchases(dt, false);
                },
                footer:true
                },
                {
                    extend: 'csv',
                    text: '<i title="export to csv" class="fa fa-file-text-o"></i>',
                    exportOptions: {
                        columns: ':visible:Not(.not-exported)',
                        rows: ':visible',
                        format: {
                            body: function ( data, row, column, node ) {
                                if (column === 0 && (data.indexOf('<img src=') !== -1)) {
                                    var regex = /<img.*?src=['"](.*?)['"]/;
                                    data = regex.exec(data)[1];
                                }
                                return data;
                            }
                        }
                    },
                     action: function(e, dt, button, config) {
                    datatable_sum_purchases(dt, true);
                    $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                    datatable_sum_purchases(dt, false);
                },
                footer:true
                },
                {
                    extend: 'print',
                    text: '<i title="print" class="fa fa-print"></i>',
                    exportOptions: {
                        columns: ':visible:Not(.not-exported)',
                        rows: ':visible',
                        stripHtml: false
                    },
                        action: function(e, dt, button, config) {
                    datatable_sum_purchases(dt, true);
                    $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                    datatable_sum_purchases(dt, false);
                },
                footer:true
                },
                
                {
                    text: '<i title="delete" class="dripicons-cross"></i>',
                    className: 'buttons-delete',
                    action: function ( e, dt, node, config ) {
                        if(user_verified == '1') {
                            brand_id.length = 0;
                            $(':checkbox:checked').each(function(i){
                                if(i){
                                    brand_id[i-1] = $(this).closest('tr').data('id');
                                }
                            });
                            if(brand_id.length && confirm("Are you sure want to delete?")) {
                                $.ajax({
                                    type:'POST',
                                    url:'brand/deletebyselection',
                                    data:{
                                        brandIdArray: brand_id
                                    },
                                    success:function(data){
                                        alert(data);
                                    }
                                });
                                dt.rows({ page: 'current', selected: true }).remove().draw(false);
                            }
                            else if(!brand_id.length)
                                alert('No brand is selected!');
                        }
                        else
                            alert('This feature is disable for demo!');
                    }
                   
                },
                {
                    extend: 'colvis',
                    text: '<i title="column visibility" class="fa fa-eye"></i>',
                    columns: ':gt(0)'
                },
            ],
            drawCallback: function () {
            var api = this.api();
            datatable_sum_purchases(api, false);
        }
            
        });
             function datatable_sum_purchases(dt_selector, is_calling_first) {
        if (dt_selector.rows( '.selected' ).any() && is_calling_first) {
            var rows = dt_selector.rows( '.selected' ).indexes();
            $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 6, { page: 'current' } ).data().sum().toFixed({{$general_setting->decimal}}));
            
        }
        else {
        $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 6, { page: 'current' } ).data().sum().toFixed({{$general_setting->decimal}}));

            
        }
    }

    </script>
@endpush
