<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="{{ asset('logo/20230927110325.png') }}">
    <title>Ovation Payroll Voucher</title>
    <style>
        .borderless td {
            border: none;
            border-right: 1px black solid;
            border-left: 1px black solid;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <!-- Header Section -->
        <div class="d-flex justify-content-center align-items-center">
            <img src="{{ asset('logo/20230927110325.png') }}" alt="Logo" style="width: 120px; height: 80px;">
        </div>

        <div class="d-flex justify-content-between align-items-center border-bottom pb-2">
            <h5>Ovation Health Care</h5>
            <span>
                <strong>Reference #:</strong> {{ str_replace('payroll-', '', $payroll->reference_no) }}
            </span>
            <h5 class="px-4 py-3" style="background-color: rgb(1, 75, 148); color: white;">
                Payroll Voucher
            </h5>
        </div>

        <!-- Payroll Details Section -->
        <div class="table row py-2">
            <div class="col-md-6 d-flex">
                <strong class="me-3">Date of Join:</strong>
                <span>{{ \Carbon\Carbon::parse($employee->date_of_joining)->format('d F Y') }}</span>
            </div>
            <div class="col-md-6 d-flex">
                <strong class="me-3">Employee Name:</strong>
                <span>{{ $employee->name }}</span>
            </div>
            <div class="col-md-6 d-flex">
                <strong class="me-4">Pay Period:</strong>&nbsp;
                <span>{{ $payroll->month }}, {{ $payroll->year }} </span>
            </div>

            <div class="col-md-6 d-flex">
                <strong class="me-5">Department:</strong>
                <span>{{ $department->name }}</span>
            </div>
            <div class="col-md-6 d-flex">
                <strong class="me-4">Num of Days:</strong>&nbsp;
                <span>{{ $payroll->no_of_days }}</span>
            </div>
        </div>


        <!-- Payroll Table Section -->
        <div class="table-responsive mt-4">
            <table class="table borderless table-bordered">
                <thead class="bg-primary text-white">
                    <tr>
                        <th>Description</th>
                        <th>Earnings</th>
                        <th>Deductions</th>
                        <th>Notes</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Basic Salary Row -->
                    <tr>
                        <td>Basic Salary</td>
                        <td>{{ number_format($payroll->amount, 2) }}</td>
                        <td>-</td>
                        <td>-</td>
                        <td>{{ number_format($payroll->amount, 2) }}</td> <!-- Display the amount for Basic Salary -->
                    </tr>
                    <!-- Allowance Row -->
                    <tr>
                        <td>Allowance</td>
                        <td>{{ number_format($payroll->allowance, 2) }}</td>
                        <td>-</td>
                        <td>-</td>
                        <td>{{ number_format($payroll->allowance, 2) }}</td> <!-- Display the amount for Allowance -->
                    </tr>
                    <!-- Leave Row -->
                    <tr>
                        <td>Leave</td>
                        <td>-</td>
                        <td>{{ $payroll->leave }}</td>
                        <td>Number of Leaves {{ $payroll->leave }}</td>
                        <td>-</td> <!-- No specific amount for leave -->
                    </tr>
                    <!-- Deduction Row -->
                    <tr>
                        <td>Deductions</td>
                        <td>-</td>
                        <td>{{ number_format($payroll->deduction_amount, 2) }}</td>
                        <td>{{ $payroll->deduction_note }}</td>
                        <td>{{ number_format($payroll->deduction_amount, 2) }}</td> <!-- Display the amount for Deductions -->
                    </tr>
                </tbody>
                <tfoot>
                    <!-- Net Pay Row -->
                    <tr>
                        <td colspan="4" class="text-end"><strong>Total</strong></td>
                        @php
                            $netpay = $payroll->amount - $payroll->deduction_amount + $payroll->allowance;
                        @endphp
                        <td colspan="2"><strong>{{ number_format($netpay, 2) }}</strong></td> <!-- Total Net Pay -->
                    </tr>
                </tfoot>
            </table>

        </div>

        @php
    use NumberToWords\NumberToWords;

    // Initialize NumberToWords
    $numberToWords = new NumberToWords();
    $locale = app()->getLocale();
    $supportedLocales = ['en', 'fr', 'es', 'de'];

    // Check if the current locale is supported
    if (in_array($locale, $supportedLocales)) {
        $numberTransformer = $numberToWords->getNumberTransformer($locale);
    } else {
        $numberTransformer = $numberToWords->getNumberTransformer('en');
    }

    // Convert the integer part of the netpay to words
    $netpayInWords = $numberTransformer->toWords(floor($netpay));

    // Convert the decimal part (cents) of the netpay to words if it exists
    $decimalPart = round($netpay - floor($netpay), 2) * 100;
    $decimalInWords = $numberTransformer->toWords($decimalPart);

    // Concatenate the amount in words
    if ($decimalPart > 0) {
        $fullAmountInWords = ucfirst($netpayInWords) . ' and ' . $decimalInWords . ' cents only';
    } else {
        $fullAmountInWords = ucfirst($netpayInWords) . ' only';
    }

    // Add the currency (PKR) to the amount
    $currency = 'PKR';
    $fullAmountInWords = $currency . ' ' . $fullAmountInWords;
@endphp

<div class="d-flex justify-content-center align-items-center">
    <p>{{ $fullAmountInWords }}</p>
</div>



        <!-- Signature Section -->
        <div class="row mt-5">
            <div class="col text-start">
                <p class="fw-bold">Employer Signature<span class="underline">___________________</span></p>
            </div>
            <div class="col text-end">
                <p class="fw-bold">Employee Signature<span class="underline">___________________</span></p>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Trigger print dialog on page load
        window.onload = function() {
            window.print();
        };
    </script>
</body>
</html>
