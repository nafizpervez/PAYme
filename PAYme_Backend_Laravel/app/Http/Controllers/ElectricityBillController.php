<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ElectricityBill;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\ElectricityBillResouce;
use App\Http\Requests\StoreElectricityBillRequest;
use App\Http\Requests\UpdateElectricityBillRequest;

class ElectricityBillController extends Controller
{

    public function transectionHistory()
    {
        
        $electricityBills = ElectricityBill::all();

        return ElectricityBillResouce::collection($electricityBills);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ElectricityBillResouce::collection(ElectricityBill::all());
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
     * @param  \App\Http\Requests\StoreElectricityBillRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    
    {
        $electricityBill = ElectricityBill::create([
            'user_ID'=>Auth::user()->id,
            'organization'=> $request->organization,
            'account_no'=> $request->account_no,
            'bill_period'=> $request->bill_period,
            'contact_number'=> $request->contact_number,
            'amount'=> $request->amount,
        ]);
        $electricityBill =ElectricityBill::find($electricityBill->id);
        return response()->json(new ElectricityBillResouce($electricityBill), 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ElectricityBill  $electricityBill
     * @return \Illuminate\Http\Response
     */
    public function show(ElectricityBill $electricityBill)
    {
        return response()->json(new ElectricityBillResouce($electricityBill), 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ElectricityBill  $electricityBill
     * @return \Illuminate\Http\Response
     */
    public function edit(ElectricityBill $electricityBill)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateElectricityBillRequest  $request
     * @param  \App\Models\ElectricityBill  $electricityBill
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateElectricityBillRequest $request, ElectricityBill $electricityBill)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ElectricityBill  $electricityBill
     * @return \Illuminate\Http\Response
     */
    public function destroy(ElectricityBill $electricityBill)
    {
        $electricityBill->delete();
        return response()->json(['message'=> "Leave Request has been Removed",], 200);
    }
}
