<?php

namespace Database\Factories;

use App\Models\Country;
use Illuminate\Database\Eloquent\Factories\Factory;

class BarbieFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'hair_color' => $this->faker->text(10),
            'length' => $this->faker->text(10),
            'country_id' => Country::factory(),
            'price' => rand(100, 1000),
            'eye_color' => $this->faker->text(10),
        ];
    }
}
