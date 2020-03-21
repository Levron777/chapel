<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class PreachingController extends Controller
{
    public function index()
    {
        $preaching = DB::table('preaching')->orderBy('created_at', 'desc')->paginate(5);
        $title = 'ТЕМАТИЧЕСКИЕ ПРОПОВЕДИ';

        return view('content.preaching', [
            'preaching' => $preaching,
            'title' => $title
        ]);
    }
}
