<?php

namespace App\Http\Controllers;

use App\Models\WaterBill;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\WaterBillResouce;
use App\Http\Requests\StoreWaterBillRequest;
use App\Http\Requests\UpdateWaterBillRequest;

class WaterBillController extends Controller
{
    public function transectionHistory()
    {
        
        $waterBills = WaterBill::all();

        return WaterBillResouce::collection($waterBills);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return WaterBillResouce::collection(WaterBill::all());
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
     * @param  \App\Http\Requests\StoreWaterBillRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $waterBill = WaterBill::create([
            'user_ID'=>Auth::user()->id,
            'organization'=> $request->organization,
            'bill_period' => $request->bill_period,
            'account_no'=> $request->account_no,
            'amount'=> $request->amount,
        ]);
        $waterBill =WaterBill::find($waterBill->id);
        return response()->json(new WaterBillResouce($waterBill), 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\WaterBill  $waterBill
     * @return \Illuminate\Http\Response
     */
    public function show(WaterBill $waterBill)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\WaterBill  $waterBill
     * @return \Illuminate\Http\Response
     */
    public function edit(WaterBill $waterBill)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateWaterBillRequest  $request
     * @param  \App\Models\WaterBill  $waterBill
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateWaterBillRequest $request, WaterBill $waterBill)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\WaterBill  $waterBill
     * @return \Illuminate\Http\Response
     */
    public function destroy(WaterBill $waterBill)
    {
        $waterBill->delete();
        return response()->json(['message'=> "Request has been Removed",], 200);
    }
}
