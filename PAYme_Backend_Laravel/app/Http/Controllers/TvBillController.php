<?php

namespace App\Http\Controllers;

use App\Models\TvBill;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\TvBillResouce;
use App\Http\Requests\StoreTvBillRequest;
use App\Http\Requests\UpdateTvBillRequest;

class TvBillController extends Controller
{

    public function transectionHistory()
    {
        
        $tvBills = TvBill::all();

        return TvBillResouce::collection($tvBills);
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return TvBillResouce::collection(TvBill::all());
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
     * @param  \App\Http\Requests\StoreTvBillRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $tvBill = TvBill::create([
            'user_ID'=>Auth::user()->id,
            'organization'=> $request->organization,
            'bill_period'=> $request->bill_period,
            'customer_id' => $request->customer_id,
            'amount' => $request->amount,
        ]);
        $tvBill =TvBill::find($tvBill->id);
        return response()->json(new TvBillResouce($tvBill), 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TvBill  $tvBill
     * @return \Illuminate\Http\Response
     */
    public function show(TvBill $tvBill)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TvBill  $tvBill
     * @return \Illuminate\Http\Response
     */
    public function edit(TvBill $tvBill)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateTvBillRequest  $request
     * @param  \App\Models\TvBill  $tvBill
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateTvBillRequest $request, TvBill $tvBill)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TvBill  $tvBill
     * @return \Illuminate\Http\Response
     */
    public function destroy(TvBill $tvBill)
    {
        $tvBill->delete();
        return response()->json(['message'=> "Request has been Removed",], 200);
    }
}
