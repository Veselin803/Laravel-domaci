<?php

namespace Database\Factories;

use App\Models\Barbie;
use Illuminate\Database\Eloquent\Factories\Factory;

class FavoriteFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */

     //nisam koristio
    public function definition()
    {
        return [
            'user_id' => User::factory(),
            'barbie_id' => Barbie::factory(),
        ];
    }
}
