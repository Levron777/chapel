<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Adress;

class AdressController extends Controller
{
    public function index()
    {
        $adress = Adress::all();

        return view('content.adress', [
            'adress' => $adress,
        ]);
    }
}
