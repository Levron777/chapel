<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class EventController extends Controller
{
    public function index()
    {
        $events = DB::table('events')->orderBy('event', 'desc')->paginate(5);
        $i = 1;

        return view('content.events', [
            'events' => $events,
            'i' => $i
        ]);
    }
}
