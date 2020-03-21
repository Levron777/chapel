<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class VideoController extends Controller
{
    public function index()
    {
        // $video = Video::all()->paginate(2);
        $video = DB::table('video')->orderBy('created_at', 'desc')->paginate(5);
        // $i = 1;

        return view('content.videos', [
            'video' => $video,
            // 'i' => $i
        ]);
    }
}
