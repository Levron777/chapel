<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use DB;



class MainController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // $news = News::all()->paginate(2);
        $news = DB::table('news')->orderBy('created_at', 'desc')->paginate(2);

        return view('main', [
            'news' => $news,
        ]);
    }
}
