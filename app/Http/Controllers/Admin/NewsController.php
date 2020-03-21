<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\News;
use DB;

class NewsController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index(Request $request)
    {
        $news = DB::table('news')->orderBy('created_at', 'desc')->paginate(2);

        return view('admin.oneNew', [
            'news' => $news,
        ]);
    }
}
