<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TvBillController;
use App\Http\Controllers\GasBillController;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\WaterBillController;
use App\Http\Controllers\InternetBillController;
use App\Http\Controllers\EducationBillController;
use App\Http\Controllers\ElectricityBillController;

Route::post('login', [AuthController::class,'login']);
Route::post('register', [AuthController::class,'register']);

Route::middleware(['auth:sanctum']) ->group(function (){
    
    Route::get('logout', [AuthController::class, 'logout']);
    Route::post('checkPin', [AuthController::class,'checkPin']);
    Route::get('users', [UserController::class,'allUsers']);
    Route::get('users/{user}', [UserController::class,'showUsers']);

    Route::post('pictureUpdate', [UserController::class,'profilePictureUpdate']);
    Route::post('update/users/{user}', [UserController::class,'profileDetailsUpdate']);

    Route::apiResource('waterBill', WaterBillController::class);
    Route::get('waterBillhistory', [WaterBillController::class,'transectionHistory']);

    Route::apiResource('internetBill', InternetBillController::class);
    Route::get('internetBillhistory', [InternetBillController::class,'transectionHistory']);

    Route::apiResource('electricityBill', ElectricityBillController::class);
    Route::get('electricityBillhistory', [ElectricityBillController::class,'transectionHistory']);

    Route::apiResource('gasBill', GasBillController::class);
    Route::get('gasBillhistory', [GasBillController::class,'transectionHistory']);


    Route::apiResource('tvBill', TvBillController::class);
    Route::get('tvBillhistory', [TvBillController::class,'transectionHistory']);

    Route::apiResource('educationBill', EducationBillController::class);
    Route::get('educationBillhistory', [EducationBillController::class,'transectionHistory']);

    Route::get('attachments/{attachmentLink}', function ($attachmentLink) {
        $file = Storage::get('public/files/attachments/'.$attachmentLink);
        return $file;
    });

});





// Route::post('/tokens/create', function (Request $request) {
//     $token = $request->user()->createToken($request->token_name);
 
//     return ['token' => $token->plainTextToken];
// });

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

