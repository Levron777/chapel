<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Contact;
use DB;

class AdminContactsController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    // Method for redirecting to the edit page of the selected field from the news table

    public function edit()
    {
        $contactsEdit = Contact::find(1);

        return view('admin.contactsEdit', [
            'contactsEdit' => $contactsEdit,
        ]);
    }

    // Method for saving edited data entered by the administrator (with validation)

    public function update(Request $request, $id)
    {
        $contactsEdit = Contact::find($id);

        $this->validate($request, [
            'titleInput' => 'required|max:255',
            'descriptionInput' => 'required',
            // 'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $contactsEdit->title = $request->input('titleInput');
        $contactsEdit->description = $request->input('descriptionInput');
        // $adressEdit->url = $request->input('urlInput');
        $contactsEdit->rubric = $request->input('rubricInput');
        $contactsEdit->save();

        return redirect('admin/contacts/edit');
    }
}
