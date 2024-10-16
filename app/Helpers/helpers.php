<?php
if (!function_exists('allocatePayment')) {
    function allocatePayment($totalPayment, $transactions)
    {
        $allocated = [];

        foreach ($transactions as $transaction) {
            if ($totalPayment <= 0) {
                break;
            }

            $transactionAmount = $transaction->grand_total;

            if ($totalPayment >= $transactionAmount) {
                $allocated[] = [
                    'reference_no' => $transaction->reference_no,
                    'allocated_amount' => $transactionAmount,
                ];
                $totalPayment -= $transactionAmount;
            } else {
                $allocated[] = [
                    'reference_no' => $transaction->reference_no,
                    'allocated_amount' => $totalPayment,
                ];
                $totalPayment = 0;
            }
        }

        return [
            'allocated' => $allocated,
            'remaining_payment' => $totalPayment
        ];
    }
}