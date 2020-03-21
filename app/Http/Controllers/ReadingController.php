<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Reading;

class ReadingController extends Controller
{
    public function index()
    {
        $readings = Reading::all();

        return view('content.reading', [
            'readings' => $readings,
        ]);
    }
}
