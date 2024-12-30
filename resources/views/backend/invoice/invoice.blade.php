<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <title>Bootstrap Table</title> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div class="container mt-5">
        <div class="d-flex justify-content-between align-items-center border-bottom pb-2">
            <!-- Left side: Logo -->
            <div class="d-flex align-items-center">
                <img src="{{ asset('logo/20230927110325.png') }}" alt="Logo" style="width: 120px; height: 80px;">
            </div>

            <!-- Centered title -->
            <div class="d-flex justify-content-center flex-grow-1">
                <h4 class="mb-0">Oviation Health Care</h4>
            </div>

            <!-- Right side: Accounting Voucher -->
            <div>
                <h5 class="px-4 py-3"  style="background-color: rgb(1, 75, 148); color: white;">Expense Voucher</h5>
            </div>
        </div>
        <table class="table table-bordered m-0"  style="border-left: 2px black solid; border-top: 2px black solid; border-right: 2px black solid; border-bottom: 2px black solid;"  >
            <tbody>
                <tr>
                    <td class="fw-bold">Voucher No:</td>
                    <td>{{ $expense->reference_no }}</td>
                    <td class="fw-bold">Date:</td>
                    <td>{{ $expense->created_at->format('d F Y') }}</td>
                </tr>
                {{-- <tr>
                    <td class="fw-bold">State:</td>
                    <td>Dummy</td>
                    <td class="fw-bold">Account:</td>
                    <td>Bank Account</td>
                </tr> --}}
            </tbody>
        </table>
        <!-- Main Table -->
        <table class="table table-bordered" style="border-left: 2px black solid; border-right: 2px black solid; border-bottom: 2px black solid;">
            <thead style="background-color: rgb(1, 75, 148); color: white;">
                <tr>
                    <th>S.No.</th>
                    <th>Particulars</th>
                    {{-- <th>Debit</th> --}}
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                    <tr>
                        <td>{{ $expense->id }}</td>
                        <td>{{ $expense->note }}</td>
                        <td>{{ $expense->amount }}</td>
                        {{-- <td>{{ $expense->amount }}</td> <!-- Adjust this if you want a different value here --> --}}
                    </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td></td>
                    <td class="fw-bold text-end">Total</td>
                    <td>{{ $expense->amount }}</td>
                </tr>
            </tfoot>
        </table>

        <!-- Additional Section -->
        <div class="row" style="margin-top: 4.5rem !important;">
            <div class="col">
                <p class="fw-bold">AUTHORIZED: <span class="underline">______________</span></p>
            </div>
            <div class="col">
                <p class="fw-bold">ACCOUNTANT: <span class="underline" style="text-decoration: underline;">{{ $user->name }}</span></p>
            </div>
            <div class="col">
                <p class="fw-bold">RECIEVER SIGNATURE: <span class="underline">_______________</span></p>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    {{-- <script>
        // Page load hone par print dialog kholna
        window.onload = function() {
            window.print();
        };
    </script> --}}
</body>
</html>
