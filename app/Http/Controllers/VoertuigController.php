<?php

namespace App\Http\Controllers;

use App\Models\Voertuig;
use App\Models\Instructeur;
use Illuminate\Http\Request;

class VoertuigController extends Controller
{
    public function index()
    {
        $voertuigen = Voertuig::all();
        return view('voertuig.welcome', compact('voertuigen'));
    }

    public function create()
    {
        return view('voertuig.create');
    }

    public function store(Request $request)
    {
        Voertuig::create($request->all());
        return redirect()->route('voertuigen.index');
    }

    public function show(Voertuig $voertuig)
    {
        return view('voertuig.show', compact('voertuig'));
    }

    public function edit(Voertuig $voertuig)
    {
        return view('voertuig.edit', compact('voertuig'));
    }

    public function update(Request $request, Voertuig $voertuig)
    {
        $voertuig->update($request->all());
        return redirect()->route('voertuigen.index');
    }

    public function destroy(Voertuig $voertuig)
    {
        $voertuig->delete();
        return redirect()->route('voertuigen.index');
    }
}
