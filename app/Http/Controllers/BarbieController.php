<?php

namespace App\Http\Controllers;

use App\Models\Barbie;
use Illuminate\Http\Request;
use Validator;

class BarbieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $barbies = Barbie::all();

        return response([
            "barbies" => $barbies,
            "message" => "Uspesno",
        ], 200);//ok
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // VALIDATE DATA
        $validator = Validator::make($request->all(), [
            'price' => 'required|numeric',
            'name' => 'required|string',
            'hair_color' => 'required|string',
            'eye_color' => 'required|string',
            'length' => 'required|string',
            'country_id' => 'required|integer',
        ]);

        if ($validator->fails()) {
            return response([
                'barbie' => null,
                'message' => 'Validacija neuspesna.',
                'errors' => $validator->messages(),
            ], 400);// bad request
        }

        $barbie = new Barbie();

        $barbie->price = $request->price;
        $barbie->name = $request->name;
        $barbie->hair_color = $request->hair_color;
        $barbie->eye_color = $request->eye_color;
        $barbie->length = $request->length;
        $barbie->country_id = $request->country_id;
        $barbie->save();

        return response([
            "barbie" => $barbie,
            "message" => "Uspeh.",
        ], 201);//
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $barbie = Barbie::find($id);

        if (!$barbie) {
            return response([
                'barbie' => null,
                'message' => 'barbie not found.',
            ], 404);//not found
        }

        // validiraju se novi podaci
        $validator = Validator::make($request->all(), [
            'price' => 'required|numeric',
            'name' => 'required|string',
            'hair_color' => 'required|string',
            'eye_color' => 'required|string',
            'length' => 'required|string',
            'country_id' => 'required|integer',
        ]);

        if ($validator->fails()) {
            return response([
                'barbie' => $barbie,
                'message' => 'Validacija neuspesna.',
                'errors' => $validator->messages(),
            ], 400);//bad request
        }

        $barbie->price = $request->price;
        $barbie->name = $request->name;
        $barbie->hair_color = $request->hair_color;
        $barbie->eye_color = $request->eye_color;
        $barbie->length = $request->length;
        $barbie->country_id = $request->country_id;
        $barbie->save();

        return response([
            "barbie" => $barbie,
            "message" => "Uspesno.",
        ], 200);//ok
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $barbie = Barbie::find($id);

        if (!$barbie) {
            return response([
                'barbie' => null,
                'message' => 'Nije pronadjena.',
            ], 404);//not found
        }

        $barbie->delete();

        return response([
            "barbie" => $barbie,
            "message" => "Uspesno obrisano.",
        ], 200);//ok
    }
}
