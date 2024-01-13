<?php

namespace App\Http\Controllers;

use App\Models\Persona;
use Illuminate\Http\Request;

class PersonaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Persona::all();
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
        $persona = new Persona();
        $persona -> fecha_creacion = $request -> fecha_creacion;
        $persona -> fecha_modificacion = $request -> fecha_modificacion;
        $persona -> usuario_creacion = $request -> usuario_creacion;
        $persona -> usuario_modificacion = $request -> usuario_modificacion;
        $persona -> primer_nombre = $request -> primer_nombre;
        $persona -> segundo_nombre = $request -> segundo_nombre;
        $persona -> primer_apellido = $request -> primer_apellido;
        $persona -> segundo_apellido = $request -> segundo_apellido;
        $persona -> save();
        return "La persona se guardó correctamente.";
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $id = Persona::find($id);
        return $id;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Persona $persona)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $persona = Persona::find($id);
        $persona -> fecha_creacion = $request -> fecha_creacion;
        $persona -> fecha_modificacion = $request -> fecha_modificacion;
        $persona -> usuario_creacion = $request -> usuario_creacion;
        $persona -> usuario_modificacion = $request -> usuario_modificacion;
        $persona -> primer_nombre = $request -> primer_nombre;
        $persona -> segundo_nombre = $request -> segundo_nombre;
        $persona -> primer_apellido = $request -> primer_apellido;
        $persona -> segundo_apellido = $request -> segundo_apellido;
        $persona -> save();
        return "La persona se actualizó correctamente.";
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $persona = Persona::find($id);
        $persona -> delete();
        return "La persona se eliminó correctamente.";
    }
}
