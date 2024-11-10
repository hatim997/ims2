<?php
if (!function_exists('allocatePayment')) {
    function allocatePayment($totalPayment, $transactions)
    {
        $allocated = [];

        foreach ($transactions as $transaction) {
            if ($totalPayment <= 0) {
                break;
            }
    
            // Calculate remaining amount needed for this transaction
            $remaining_balance = $transaction->grand_total - $transaction->paid_amount;
    
            if ($totalPayment >= $remaining_balance) {
                // Allocate only what's needed to complete the transaction
                $allocated[] = [
                    'reference_no' => $transaction->reference_no,
                    'allocated_amount' => $remaining_balance,
                ];
                $totalPayment -= $remaining_balance;
            } else {
                // Allocate the remaining total payment to this transaction
                $allocated[] = [
                    'reference_no' => $transaction->reference_no,
                    'allocated_amount' => $totalPayment,
                ];
                $totalPayment = 0;
            }
        }
    
        return [
            'allocated' => $allocated,
            'remaining_payment' => $totalPayment,
        ];
    }
}