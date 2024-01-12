<?php

namespace App\Http\Controllers;

use App\Models\InternetBill;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\InternetBillResouce;
use App\Http\Requests\StoreInternetBillRequest;
use App\Http\Requests\UpdateInternetBillRequest;

class InternetBillController extends Controller
{
    public function transectionHistory()
    {
        
        $internetBills = InternetBill::all();

        return InternetBillResouce::collection($internetBills);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return InternetBillResouce::collection(InternetBill::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreInternetBillRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $internetBill = InternetBill::create([
            'user_ID'=>Auth::user()->id,
            'organization'=> $request->organization,
            'bill_period'=> $request->bill_period,
            'account_no' => $request->account_no,
            'contact_number' => $request->contact_number,
            'amount' => $request->amount,
        ]);
        $internetBill =InternetBill::find($internetBill->id);
        return response()->json(new InternetBillResouce($internetBill), 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\InternetBill  $internetBill
     * @return \Illuminate\Http\Response
     */
    public function show(InternetBill $internetBill)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\InternetBill  $internetBill
     * @return \Illuminate\Http\Response
     */
    public function edit(InternetBill $internetBill)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateInternetBillRequest  $request
     * @param  \App\Models\InternetBill  $internetBill
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateInternetBillRequest $request, InternetBill $internetBill)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\InternetBill  $internetBill
     * @return \Illuminate\Http\Response
     */
    public function destroy(InternetBill $internetBill)
    {
        $internetBill->delete();
        return response()->json(['message'=> "Request has been Removed",], 200);
    }
}
