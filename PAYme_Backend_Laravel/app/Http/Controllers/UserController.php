<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\File;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Storage;

class UserController extends Controller
{
    public function allUsers()
    {
        $users = User::all();

        return UserResource::collection($users);
    }
    public function showUsers(User $user)
    {
        return response()->json(new UserResource ($user), 200);
    }

    public function profilePictureUpdate(Request $request) {
        if($request->hasFile('image')){
            try {
                $file_path = 'public/files/attachments';
                $image = $request->File('image');
                // $file_name = Str::random(10).''.Str::replace(' ', '', $request->file_name);
                $new_name = rand().'.'.$image->getClientOriginalExtension();
                $av_path = Storage::putFileAs($file_path, $request->file('image'), $new_name);
    
                if(env('APP_DEBUG')){
                    $av_path = Str::replace($file_path, 'http://192.168.13.140:80/api/attachments', $av_path);
                }else{
                    // $av_path = Str::replace($file_path, 'https://adnemsbacked.adntel.net/api/attachments', $av_path);
                }
                return response()->json($av_path, 200);
            } catch (\Throwable $th) {
                return response()->json(['error'=> $th.'',], 401);
            }
        }
        else{
            return response()->json('Image Null');
        }
    }
    public function profileDetailsUpdate(Request $request, User $user){
        
        try {
            $user->update([
            
                'name' => is_null($request->name) ? $user->name:$request->name,
                'email' => is_null($request->email) ? $user->email:$request->email,
                'contact_number' => is_null($request->contact_number) ? $user->contact_number:$request->contact_number,
                'location' => is_null($request->location) ? $user->location:$request->location,
            ]);
  
            return response()->json(new UserResource($user), 200);
        } catch (\Throwable $th) {
            return response()->json(new UserResource($user), 400);
        }


       
    }
}
