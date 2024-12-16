<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name', 'description', 'image', 'user_id'];

    public function articles()
    {
        return $this->hasMany(ArticleResep::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
