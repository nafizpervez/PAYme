<?php

namespace App\Http\Controllers\API;

use Throwable;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|string|max:191',
            'email' => 'required|string|max:191|unique:users,email',
            'mid' => 'required|string|max:191',
            'tid' => 'required|string|max:191',
            'location' => 'required|string',
            'contact_number' => 'required|string|max:191',
            'pin' => 'required|string|max:5|min:5',
            
        ]);
        $av_path = null;
        if($request->hasFile('avatar')){
            try {
                $file_path = 'public/files/attachments';
                $image = $request->File('avatar');
                // $file_name = Str::random(10).''.Str::replace(' ', '', $request->file_name);
                $new_name = rand().'.'.$image->getClientOriginalExtension();
                $av_path = Storage::putFileAs($file_path, $image  , $new_name);
    
                if(env('APP_DEBUG')){
                    $av_path = Str::replace($file_path, 'http://192.168.13.140:80/api/attachments', $av_path);
                }else{
                    // $av_path = Str::replace($file_path, 'https://adnemsbacked.adntel.net/api/attachments', $av_path);
                }
                
            } catch (\Throwable $th) {
                $av_path = null;
            }
        }

        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'mid' => $data['mid'],
            'tid' => $data['tid'],
            'location' => $data['location'],
            'avatar' => $av_path,
            'contact_number' => $data['contact_number'],
            'pin' => Hash::make($data['pin']),
        ]);

        $token = $user->createToken('registerToken')->plainTextToken;

        return response()->json([
            'user'=>$user,
            'token'=>$token,
        ],200);
    }

    public function logout(Request $request)
    {
        $user = $request->user();
        $user->tokens()->delete();
        
        return response()->json([
            'message'=>'Logged out succefully.'
        ]);
    }

    public function login(Request $request)
    {
        
        
        $data = $request->validate([
            'tid' => 'required|string|max:191',
            'mid' => 'required|string|max:191',
            'pin' => 'required|string|max:5',
        ]);

        $user = User::
        where('tid', $data['tid'])->
        where('mid', $data['mid'])->first();

        if(!$user || !Hash::check($data['pin'], $user->pin))
        {
            return response()->json([
                'message'=>'Invalid credential.'
            ]);
        
        }
        else
        {
            $token = $user->createToken('loginToken')->plainTextToken;
            return response()->json([
                'user'=>new UserResource($user),
                'token'=>$token,
            ],200);
        }
    }

    public function checkPin(Request $request){
        if(!Hash::check($request->pin, Auth::user()->pin)){
            return response()->json([
                'status'=>'Failed',
            ],200);
        }else{
            return response()->json([
                'status'=>'Success',
            ],200);
        }
    }

    
}
