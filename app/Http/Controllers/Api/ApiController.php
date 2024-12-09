<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class ApiController extends Controller
{
    // POST [ name, email, password, password_confirmation ]
    public function register(Request $request){
        try {
            //Validation
            $validator = validator($request->all(), [
                "name" => "required|min:3|max:255",
                "email" => "required|email|unique:users",
                "password" => "required|min:8|confirmed",
                "password_confirmation" => "required"
            ], [
                "name.required" => "Name field is required",
                "name.min" => "Name must be at least 3 characters",
                "email.required" => "Email field is required",
                "email.email" => "Please enter a valid email address",
                "email.unique" => "This email is already registered",
                "password.required" => "Password field is required",
                "password.min" => "Password must be at least 8 characters",
                "password.confirmed" => "Password confirmation does not match",
                "password_confirmation.required" => "Password confirmation is required"
            ]);

            if($validator->fails()) {
                return response()->json([
                    "status" => false,
                    "message" => "Validation Error",
                    "errors" => $validator->errors()
                ], 422);
            }

            //Create User
            $user = User::create([
                "name" => $request->name,
                "email" => $request->email,
                "password" => bcrypt($request->password)
            ]);

            return response()->json([
                "status" => true,
                "message" => "User Registered Successfully",
                "data" => $user
            ], 201);

        } catch (\Exception $e) {
            return response()->json([
                "status" => false,
                "message" => "Registration Failed",
                "error" => $e->getMessage()
            ], 500);
        }
    }

    public function login(Request $request){
        try {
            // Enhanced validation
            $validator = validator($request->all(), [
                "email" => "required|email|exists:users,email",
                "password" => "required|min:8"
            ], [
                "email.required" => "Email field is required",
                "email.email" => "Please enter a valid email address",
                "email.exists" => "This email is not registered in our system",
                "password.required" => "Password field is required",
                "password.min" => "Password must be at least 8 characters"
            ]);

            if($validator->fails()) {
                return response()->json([
                    "status" => false,
                    "message" => "Validation Error",
                    "errors" => $validator->errors()
                ], 422);
            }

            $user = User::where("email", $request->email)->first();

            if(Hash::check($request->password, $user->password)) {
                $token = $user->createToken("auth_token")->accessToken;

                return response()->json([
                    "status" => true,
                    "message" => "User Logged In Successfully",
                    "token" => $token,
                    "user" => $user
                ], 200);
            }

            return response()->json([
                "status" => false,
                "message" => "Invalid credentials"
            ], 401);

        } catch (\Exception $e) {
            return response()->json([
                "status" => false,
                "message" => "Login Failed",
                "error" => $e->getMessage()
            ], 500);
        }
    }    //Get [Auth: Token]
    public function profile(){
        $userData = auth()->user();
        return response()->json([
            "status" => true,
            "message" => "User Profile Information",
            "data" => $userData
        ]);
    }
    public function logout(Request $request){
        $request->user()->token()->revoke();
        return response()->json([
            "status" => true,
            "message" => "User Logged Out Successfully"
        ]);
    }
}


