<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Journey;

class JourneyController extends Controller
{
    public function index()
    {
        $journey = Journey::all();

        return view('content.journey', [
            'journey' => $journey,
        ]);
    }
}
