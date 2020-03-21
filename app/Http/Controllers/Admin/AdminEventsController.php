<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Event;
use DB;

class AdminEventsController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index(Request $request)
    {
        $events = DB::table('events')->orderBy('created_at', 'desc')->paginate(2);

        return view('admin.events', [
            'events' => $events,
        ]);
    }

    // Saving data entered in the input field by the administrator in the database 
    // (with validation)

    public function store(Request $request)
    {
        $this->validate($request, [
            'titleInput' => 'required|max:255',
            'eventInput' => 'required',
            'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $events = new Event;

        $events->title = $request->input('titleInput');
        $events->event = $request->input('eventInput');
        $events->url = $request->input('urlInput');
        $events->rubric = $request->input('rubricInput');
        $events->save();

        return redirect('admin/events');
    }

    // Method for redirecting to the edit page of the selected field from the news table

    public function edit($id)
    {
        $eventsEdit = Event::find($id);

        return view('admin.eventsEdit', [
            'eventsEdit' => $eventsEdit,
        ]);
    }

    // Method for saving edited data entered by the administrator (with validation)

    public function update(Request $request, $id)
    {
        $eventsEdit = Event::find($id);

        $this->validate($request, [
            'titleInput' => 'required|max:255',
            'eventInput' => 'required',
            'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $eventsEdit->title = $request->input('titleInput');
        $eventsEdit->event = $request->input('eventInput');
        $eventsEdit->url = $request->input('urlInput');
        $eventsEdit->rubric = $request->input('rubricInput');
        $eventsEdit->save();

        return redirect('admin/events');
    }

    // Method to delete the selected row from the news table

    public function delete(Request $request, $id)
    {
        $events = Event::where('id', $id)->delete();

        return redirect('admin/events');
    }
}
