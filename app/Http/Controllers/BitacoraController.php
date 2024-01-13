<?php

namespace App\Http\Controllers;

use App\Models\Bitacora;
use Illuminate\Http\Request;

class BitacoraController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Bitacora::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $bitacora = new Bitacora();
        $bitacora -> bitacora = $request -> bitacora;
        $bitacora -> id_usuario = $request -> id_usuario;
        $bitacora -> usuario_email = $request -> usuario_email;
        $bitacora -> fecha = $request -> fecha;
        $bitacora -> hora = $request -> hora;
        $bitacora -> save();
        return "La bitacora se guardó correctamente.";
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $id = Bitacora::find($id);
        return $id;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Bitacora $bitacora)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $bitacora = Bitacora::find($id);
        $bitacora -> bitacora = $request -> bitacora;
        $bitacora -> id_usuario = $request -> id_usuario;
        $bitacora -> usuario_email = $request -> usuario_email;
        $bitacora -> fecha = $request -> fecha;
        $bitacora -> hora = $request -> hora;
        $bitacora -> save();
        return "La bitacora se actualizó correctamente.";
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $bitacora = Bitacora::find($id);
        $bitacora -> delete();
        return "La bitacora se eliminó correctamente.";
    }
}
