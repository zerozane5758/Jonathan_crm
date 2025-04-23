<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Lead extends Model
{
    protected $fillable = [
        'name',
        'email',
        'phone',
        'product_id',
    ];

    public static function boot()
    {
        parent::boot();

        static::created(function ($lead) {
            \App\Models\Project::create([
                'lead_id' => $lead->id,
                'status' => 'pending',
            ]);
        });
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}