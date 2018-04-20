<?php

namespace App\Http\Controllers;
use App\Form_Model;
use Illuminate\Support\Facades\View;
use Illuminate\Http\Request;

class Form_Controller extends Controller
{
    public function index()
    {
        return view('formform');
    }
    public function create()
    {
    }
    public function store(Request $request)
    {
        $form_=new Form_Model($request->all());
        if($form_->save())
            return ('ثبت با موفقیت انجام شد.');
        else
            return ('ثبت انجام نشد !!!');
    }

    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        //
    }
    public function update(Request $request, $id)
    {
        //
    }
    public function destroy($id)
    {
        //
    }
}
