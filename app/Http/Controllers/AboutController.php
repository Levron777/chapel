<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\About;

class AboutController extends Controller
{
    public function index()
    {
        $about = About::all();

        return view('content.about', [
            'about' => $about,
        ]);
    }
}
