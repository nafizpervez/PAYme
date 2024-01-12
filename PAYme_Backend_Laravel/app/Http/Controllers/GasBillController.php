<?php

namespace App\Http\Controllers;

use App\Models\GasBill;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\GasBillResouce;
use App\Http\Requests\StoreGasBillRequest;
use App\Http\Requests\UpdateGasBillRequest;

class GasBillController extends Controller
{
    public function transectionHistory()
    {
        
        $gasBills = GasBill::all();

        return GasBillResouce::collection($gasBills);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return GasBillResouce::collection(GasBill::all());
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
     * @param  \App\Http\Requests\StoreGasBillRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $gasBill = GasBill::create([
            'user_ID'=>Auth::user()->id,
            'organization'=> $request->organization,
            'customer_code' => $request->customer_code,
            'bill_period'=> $request->bill_period,
            'contact_number'=> $request->contact_number,
            'amount'=> $request->amount,
        ]);
        $gasBill =GasBill::find($gasBill->id);
        return response()->json(new GasBillResouce($gasBill), 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\GasBill  $gasBill
     * @return \Illuminate\Http\Response
     */
    public function show(GasBill $gasBill)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\GasBill  $gasBill
     * @return \Illuminate\Http\Response
     */
    public function edit(GasBill $gasBill)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateGasBillRequest  $request
     * @param  \App\Models\GasBill  $gasBill
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateGasBillRequest $request, GasBill $gasBill)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\GasBill  $gasBill
     * @return \Illuminate\Http\Response
     */
    public function destroy(GasBill $gasBill)
    {
        $gasBill->delete();
        return response()->json(['message'=> "Request has been Removed",], 200);
    }
}
