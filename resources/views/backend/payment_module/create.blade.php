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
            <button class="btn btn-info" data-toggle="modal" data-target="#createModal"><i class="dripicons-plus"></i> {{trans('Add Payment')}} </button>&nbsp;
        </div>
        <div class="table-responsive">
            <table id="biller-table" class="table">
                <thead>
                <tr>
                    <th class="not-exported"></th>
                    <th>date</th>
                    <th>payment reference</th>
                    <th>amount</th>
                    <th>sale/purchase reference</th>
                    {{-- <th>description</th> --}}
                    {{-- <th>Date</th> --}}
                    {{-- <th class="not-exported">{{trans('file.action')}}</th> --}}
                </tr>
                </thead>
                <tbody>
                @foreach($lims_brand_all as $key=>$brand)
                    <tr data-id="{{$brand->id}}">
                        <td>{{$key}}</td>
                        <td>{{ $brand->ndate ? \Illuminate\Support\Facades\Date::make($brand->ndate)->format("F/j/Y") : 'N/A' }}</td>
                        <td>{{ $brand->payment_reference }}</td>
                        <td>{{ $brand->amount }}</td>
                        <td>{{ $brand->s_reference_no ?? $brand->p_reference_no }}</td>
                        {{-- <td>{{ $brand->description }}</td> --}}
                        {{-- <td>{{ \Illuminate\Support\Facades\Date::make($brand->created_at)->format("d/m/y") }}</td> --}}
                        {{-- <td>
                            <div class="btn-group">
                                <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{trans('file.action')}}
                                    <span class="caret"></span>
                                    <span class="sr-only">Toggle Dropdown</span>
                                </button>
                                <ul class="dropdown-menu edit-options dropdown-menu-right dropdown-default" user="menu">
                                    <li><button type="button" data-id="{{$brand->id}}" class="open-EditbrandDialog btn btn-link" data-toggle="modal" data-target="#editModal"><i class="dripicons-document-edit"></i> {{trans('file.edit')}}</button></li>
                                    <li class="divider"></li>
                                    {{ Form::open(['route' => ['payments.destroy', $brand->id], 'method' => 'DELETE'] ) }}
                                    <li>
                                        <button type="submit" class="btn btn-link" onclick="return confirm('Are you sure want to delete?')"><i class="dripicons-trash"></i> {{trans('file.delete')}}</button>
                                    </li>
                                    {{ Form::close() }}
                                </ul>
                            </div>
                        </td> --}}
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </section>

    <div id="createModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
        <div role="document" class="modal-dialog">
            <div class="modal-content">
                {!! Form::open(['route' => 'payments.store', 'method' => 'post', 'files' => true]) !!}
                <div class="modal-header">
                    <h5 id="exampleModalLabel" class="modal-title">Add Payment</h5>
                    <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"><i class="dripicons-cross"></i></span></button>
                </div>
                <div class="modal-body">
                    <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
                    <div class="form-group">
                        <label>type *</label>
                        {{Form::text('type',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'type'))}}
                    </div>
                    <div class="form-group">
                        <label>amount *</label>
                        {{Form::text('amount',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'amount'))}}
                    </div>
                    <div class="form-group">
                        <label>date *</label>
                        {{Form::date('receive_date',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'date'))}}
                    </div>
                    <div class="form-group">
                        <label>mode *</label>
                        {{Form::text('mode',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'mode'))}}
                    </div>
                    <div class="form-group">
                        <label>description *</label>
                        {{Form::text('description',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'description'))}}
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
                {{ Form::open(['route' => ['payments.update', 1], 'method' => 'PUT', 'files' => true] ) }}
                <div class="modal-header">
                    <h5 id="exampleModalLabel" class="modal-title"> {{trans('file.Update Payment')}}</h5>
                    <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"><i class="dripicons-cross"></i></span></button>
                </div>
                <div class="modal-body">
                    <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
                    <div class="form-group">
                        <label>type *</label>
                        {{Form::text('type',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'type'))}}
                    </div>
                    <div class="form-group">
                        <label>amount *</label>
                        {{Form::text('amount',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'amount'))}}
                    </div>
                    <div class="form-group">
                        <label>date *</label>
                        {{Form::date('receive_date',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'date'))}}
                    </div>
                    <div class="form-group">
                        <label>mode *</label>
                        {{Form::text('mode',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'mode'))}}
                    </div>
                    <div class="form-group">
                        <label>description *</label>
                        {{Form::text('description',null,array('required' => 'required', 'class' => 'form-control', 'placeholder' => 'description'))}}
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

        $( "#select_all" ).on( "change", function() {
            if ($(this).is(':checked')) {
                $("tbody input[type='checkbox']").prop('checked', true);
            }
            else {
                $("tbody input[type='checkbox']").prop('checked', false);
            }
        });

        $('.edit-btn').on('click', function() {
            $("#editModal input[name='type']").val( $(this).data('type') );
            $("#editModal input[name='amount']").val( $(this).data('amount') );
            $("#editModal input[name='mode']").val( $(this).data('mode') );
            $("#editModal input[name='description']").val( $(this).data('description') );
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
                var url = "payments/"
                var id = $(this).data('id').toString();
                url = url.concat(id).concat("/edit");

                $.get(url, function(data) {
                    $("input[name='brand_id']").val(data['id']);
                    $("input[name='type']").val(data['type']);
                    $("input[name='amount']").val(data['amount']);
                    $("input[name='mode']").val(data['mode']);
                    $("input[name='description']").val(data['description']);
                });
            });
        });

        $('#biller-table').DataTable( {
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
                    'targets': [0, 1, 3]
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
                        rows: ':visible',
                        stripHtml: false
                    },
                    customize: function(doc) {
                        for (var i = 1; i < doc.content[1].table.body.length; i++) {
                            if (doc.content[1].table.body[i][0].text.indexOf('<img src=') !== -1) {
                                var imagehtml = doc.content[1].table.body[i][0].text;
                                var regex = /<img.*?src=['"](.*?)['"]/;
                                var src = regex.exec(imagehtml)[1];
                                var tempImage = new Image();
                                tempImage.src = src;
                                var canvas = document.createElement("canvas");
                                canvas.width = tempImage.width;
                                canvas.height = tempImage.height;
                                var ctx = canvas.getContext("2d");
                                ctx.drawImage(tempImage, 0, 0);
                                var imagedata = canvas.toDataURL("image/png");
                                delete doc.content[1].table.body[i][0].text;
                                doc.content[1].table.body[i][0].image = imagedata;
                                doc.content[1].table.body[i][0].fit = [30, 30];
                            }
                        }
                    },
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
                },
                {
                    extend: 'print',
                    text: '<i title="print" class="fa fa-print"></i>',
                    exportOptions: {
                        columns: ':visible:Not(.not-exported)',
                        rows: ':visible',
                        stripHtml: false
                    },
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
        } );

    </script>
@endpush
