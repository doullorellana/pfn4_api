<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Usuario>
 */
class UsuarioFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_persona' => fake() -> numberBetween($int = 1, $int2 = 10),
            'usuario_email' => fake() -> email(),
            'clave' => fake() -> password(),
            'estado' => fake() -> numberBetween($int = 1, $int2 = 2),
            'fecha_nacimiento' => fake() -> date(),
            'id_rol' => fake() -> numberBetween($int = 1, $int2 = 2),
            'fecha_creacion' => fake() -> date(),
            'fecha_modificacion' => fake() -> date(),
            'usuario_creacion' => fake() -> email(),
            'usuario_modificacion' => fake() -> email(),
        ];
    }
}
