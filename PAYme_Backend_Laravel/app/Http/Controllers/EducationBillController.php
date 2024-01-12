<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\EducationBill;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\EducationBillResouce;
use App\Http\Requests\StoreEducationBillRequest;
use App\Http\Requests\UpdateEducationBillRequest;

class EducationBillController extends Controller
{
    public function transectionHistory()
    {
        
        $educationBills = EducationBill::all();

        return EducationBillResouce::collection($educationBills);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return EducationBillResouce::collection(EducationBill::all());
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
     * @param  \App\Http\Requests\StoreEducationBillRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $educationBill = EducationBill::create([
            'user_ID'=>Auth::user()->id,
            'organization'=> $request->organization,
            'bill_period' => $request->bill_period, 
            'student_id'=> $request->student_id,
            'amount'=> $request->amount,
        ]);
        $educationBill =EducationBill::find($educationBill->id);
        return response()->json(new EducationBillResouce($educationBill), 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\EducationBill  $educationBill
     * @return \Illuminate\Http\Response
     */
    public function show(EducationBill $educationBill)
    {
        return response()->json(new EducationBillResouce($educationBill), 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\EducationBill  $educationBill
     * @return \Illuminate\Http\Response
     */
    public function edit(EducationBill $educationBill)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateEducationBillRequest  $request
     * @param  \App\Models\EducationBill  $educationBill
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateEducationBillRequest $request, EducationBill $educationBill)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\EducationBill  $educationBill
     * @return \Illuminate\Http\Response
     */
    public function destroy(EducationBill $educationBill)
    {
        $educationBill->delete();
        return response()->json(['message'=> "Request has been Removed",], 200);
    }
}
