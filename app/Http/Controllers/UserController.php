<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;

class UserController extends Controller
{
    public function login(Request $request)
    {
        // VALIDATE DATA
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response([
                'user' => null,
                'message' => 'Validacija neuspesna.',
                'errors' => $validator->messages(),
            ], 400);//error
        }

        $user = User::where('email', $request->email)->first();
 //biramo iz tabele user usera sa tim emailom sa requesta prvog na kog naidjemo
        if (!$user || !Hash::check($request->password, $user->password)) { // kada sa ne sifru iz zahteva primeni hash da li se dobije ovaj drugi parametar
            return response([
                "user" => null,
                "message" => "Login neuspesan.",
            ], 401);//not foud
        }

        // koristim ga zasticene rute
        $token = $user->createToken('token');

        return response([
            "user" => $user,
            "message" => "Login uspesan",
            'token' => $token->plainTextToken,//da se token prikaze kao string
        ], 200);//ok
    }

    public function logout(Request $request)
    {
        $user = auth()->user();
        $user->tokens()->delete();

        return response([
            "user" => $user,
            "message" => "Logout uspesan.",
        ], 200);//ok
    }

    public function register(Request $request)
    {
        try {
            // VALIDATE DATA
            $validator = Validator::make($request->all(), [
                'name' => 'required|alpha|min:2',
                'email' => 'required|string|email|unique:users,email', //jedinstven email
                'password' => 'required|string|min:4|confirmed',//da se 2x potvrdi lozinka
            ]);

            if ($validator->fails()) {
                return response([
                    'user' => null,
                    'message' => 'Validacija neuspesna.',
                    'errors' => $validator->messages(),
                ], 400);//bad reqeust
            }

            $user = new User();

            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);

            $user->save();
            $token = $user->createToken('token');

            return response([
                "user" => $user,
                "message" => "Korisnik registrovan.",
                'token' => $token->plainTextToken,
            ], 201);//created
        } catch (Exception $e) {
            return response([
                "user" => null,
                "message" => $e->getMessage(),
            ], 500);//internal server error -server nije mogao da ispuni zahtev request
        }
    }
}
