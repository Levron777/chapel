<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\English;

class EnglishController extends Controller
{
    public function index()
    {
        $english = English::all();

        return view('content.english', [
            'english' => $english,
        ]);
    }
}
