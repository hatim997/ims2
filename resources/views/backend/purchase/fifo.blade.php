@extends('backend.layout.main') @section('content')
@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
@endif
<section class="forms">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header d-flex align-items-center">
                        <h4>{{trans('file.Add Purchase')}}</h4>
                    </div>
                    <div class="card-body">

                        @if(session('message'))
    <div class="alert alert-info">
        {{ session('message') }}
    </div>
@endif
                        <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
                        {!! Form::open(['route' => 'allocate.payment', 'method' => 'post', 'files' => true, 'id' => 'purchase-form']) !!}
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                                                
                                    <div class="col-md-12 mt-3">
                                        <label for="payment_amount">Enter Payment Amount:</label>
                                        <div class="search-box input-group">                                           
                                 <input type="number" name="payment_amount" id="payment_amount"  class="form-control" required />
                                        </div>
                                    </div>
                                </div>

                             
                               
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary" id="submit-btn">{{trans('file.submit')}}</button>
                                </div>
                            </div>
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
 

</section>

@endsection