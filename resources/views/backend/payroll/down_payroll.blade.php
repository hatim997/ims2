<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Payroll Voucher</title>
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
                <strong class="me-4">Date of Join:</strong>
                <span>{{ \Carbon\Carbon::parse($employee->date_of_joining)->format('d F Y') }}</span>
            </div>
            <div class="col-md-6 d-flex">
                <strong class="me-3">Employee Name:</strong>
                <span>{{ $employee->name }}</span>
            </div>
            <div class="col-md-6 d-flex">
                <strong class="me-5">Pay Period:</strong>
                <span>{{ \Carbon\Carbon::parse($payroll->date_at)->format('F Y') }}</span>
            </div>
            <div class="col-md-6 d-flex">
                <strong class="me-5">Department:</strong>
                <span>{{ $department->name }}</span>
            </div>
        </div>


        <!-- Payroll Table Section -->
        <div class="table-responsive mt-4">
            <table class="table borderless table-bordered">
                <thead class="bg-primary text-white">
                    <tr>
                        <th>Earnings</th>
                        <th>Amount</th>
                        <th>Deduction</th>
                        <th>Net Pay</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Basic Salary</td>
                        <td>{{ $payroll->amount }}</td>
                        <td>{{ $payroll->deduction_amount }}</td>
                        @php
                            $netpay = $payroll->amount - $payroll->deduction_amount;
                        @endphp
                        <td>{{ $netpay }}</td>
                    </tr>
                    <tr>
                        <td>Tax Deduction</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3" class="text-end"><strong>Total</strong></td>
                        <td><strong>{{ $netpay }}</strong></td>
                    </tr>
                </tfoot>
            </table>
        </div>

        <div class="d-flex justify-content-center align-items-center">
            <span>{{ number_format($netpay, 2) }}</span>
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
    {{-- <script>
        // Trigger print dialog on page load
        window.onload = function() {
            window.print();
        };
    </script> --}}
</body>
</html>
