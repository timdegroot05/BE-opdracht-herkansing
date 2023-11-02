<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Voertuig extends Model
{
    protected $table = 'voertuig';

    protected $fillable = [
        'Kenteken',
        'Merk',
        'Type',
        'Bouwjaar',
        'Id',
        'Brandstof',
        'TypeVoertuigId',
        'IsActief',
        'Opmerkingen',
        'DatumAangemaakt',
        'DatumGewijzigd',
    ];
    const CREATED_AT = 'DatumAangemaakt';
    const UPDATED_AT = 'DatumGewijzigd';

}
