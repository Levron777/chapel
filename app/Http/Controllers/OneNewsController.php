<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;

class OneNewsController extends Controller
{
    public function index(Request $request)
    {
        $id = $request->id;
        $oneNews = News::find("$id");

        return view('content.oneNews', [
            'oneNews' => $oneNews,
        ]);
    }
}
