@extends('backend.layout.main') @section('content')
    @if (session()->has('not_permitted'))
        <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert"
                aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
    @endif
    <section class="forms">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">

                    <div class="card">
                        <div class="card-header d-flex align-items-center">
                            <h4>{{ trans('file.Add Purchase') }}</h4>

                        </div>
                        <div class="card-body">
                            <a class="btn btn-info" href="{{ url('purchases') }}"><i class="dripicons-backspace"></i>
                                Back</a>




                            @if (session('message'))
                                <div class="alert alert-info">
                                    {{ session('message') }}
                                </div>
                            @endif


                            <p class="italic">
                                <small>{{ trans('file.The field labels marked with * are required input fields') }}.</small>
                            </p>
                            {!! Form::open(['route' => 'allocate.payment', 'method' => 'post', 'files' => true, 'id' => 'purchase-form']) !!}
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-4 mt-3">
                                            <label for="ndate"> Date:</label>
                                            <div class="search-box input-group">
                                                <input type="date" name="ndate" id="ndate"
                                                    class="form-control" required />
                                            </div>
                                        </div>
                                        <div class="col-md-4 mt-3">
                                            <label for="payment_amount"> Type:</label>
                                            <div class="search-box input-group">
                                                <input type="text" name="type" id="payment_amount"
                                                    class="form-control" required />
                                            </div>
                                        </div>
                                        <div class="col-md-4 mt-3">
                                            <div class="form-group">
                                                <label>From Account *</strong> </label>
                                                <div class="input-group">
                                                    <select name="account_id" required class="selectpicker form-control"
                                                        data-live-search="true" data-live-search-style="begins"
                                                        title="Select Account...">
                                                        @foreach ($lims_account as $category)
                                                            <option value="{{ $category->id }}">{{ $category->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <span class="validation-msg"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-4 mt-3">
                                            <div class="form-group">
                                                <label>From Supplier *</strong> </label>
                                                <div class="input-group">
                                                    <select name="suppli_id" required class="selectpicker form-control"
                                                        data-live-search="true" data-live-search-style="begins"
                                                        title="Select Account...">
                                                        @foreach ($lims_Supplier as $category)
                                                            <option value="{{ $category->id }}">{{ $category->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <span class="validation-msg"></span>
                                            </div>
                                        </div>


                                        <div class="col-md-6 mt-3">
                                            <label for="payment_amount"> Message:</label>
                                            <div class="search-box input-group">
                                                <textarea name="comment" id="payment_amount" class="form-control" rows="5" required></textarea>
                                            </div>
                                        </div>

                                        <div class="col-md-3 mt-3">
                                            <label for="payment_amount"> File:</label>
                                            <div class="search-box input-group">
                                                <input type="file" name="file" id="payment_amount"
                                                    class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-6 mt-3">
                                            <label for="payment_amount">Enter Payment Amount:</label>
                                            <div class="search-box input-group">
                                                <input type="number" name="payment_amount" id="payment_amount"
                                                    class="form-control" required />
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-primary"
                                                    id="submit-btn">{{ trans('file.submit') }}</button>
                                            </div>
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
