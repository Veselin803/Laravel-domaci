<?php

namespace Database\Seeders;

use App\Models\Barbie;
use App\Models\Country;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $users = User::factory()->count(30)->create();
        $countries = Country::factory()->count(15)->create();

        for ($i = 0; $i < 10; $i++) {
            Barbie::factory()->create(['country_id' => $countries[rand(0, sizeof($countries) - 1)]]);
        }
    }
}
