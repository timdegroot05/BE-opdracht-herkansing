<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Vehicle</title>
</head>
<body>
    <body>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }
            form {
                max-width: 500px;
                margin: 50px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }
            input[type="text"], textarea {
                width: 100%;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }
            button {
                padding: 10px 15px;
                background-color: #333;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
        </style>
    <form action="{{ route('voertuigen.update', $voertuig->Id) }}" method="post">

        @csrf
        @method('PUT')
        
        <div>
            <label for="Kenteken">Kenteken:</label>
            <input type="text" name="Kenteken" value="{{ old('Kenteken', $voertuig->Kenteken) }}">
        </div>
         <div>
            <label for="Type">Type:</label>
            <input type="text" name="Type" value="{{ old('Type', $voertuig->Type) }}">
        </div>

        <div>
            <label for="Bouwjaar">Bouwjaar:</label>
            <input type="text" name="Bouwjaar" value="{{ old('Bouwjaar', $voertuig->Bouwjaar) }}">
        </div>

        <div>
            <label for="Brandstof">Brandstof:</label>
            <input type="text" name="Brandstof" value="{{ old('Brandstof', $voertuig->Brandstof) }}">
        </div>
        <div>
            <label for="IsActief">Is Actief:</label>
            <input type="checkbox" name="IsActief" value="1" {{ $voertuig->IsActief ? 'checked' : '' }}>
        </div>

        <div>
            <label for="Opmerkingen">Opmerkingen:</label>
            <textarea name="Opmerkingen">{{ old('Opmerkingen', $voertuig->Opmerkingen) }}</textarea>
        </div>


         <div>
            <label for="Type">Type:</label>
            <input type="text" name="Type" value="{{ old('Type', $voertuig->Type) }}">
        </div>

        <div>
            <label for="Bouwjaar">Bouwjaar:</label>
            <input type="text" name="Bouwjaar" value="{{ old('Bouwjaar', $voertuig->Bouwjaar) }}">
        </div>

        <div>
            <label for="Brandstof">Brandstof:</label>
            <input type="text" name="Brandstof" value="{{ old('Brandstof', $voertuig->Brandstof) }}">
        </div>
        <div>
            <label for="IsActief">Is Actief:</label>
            <input type="checkbox" name="IsActief" value="1" {{ $voertuig->IsActief ? 'checked' : '' }}>
        </div>

        <div>
            <label for="Opmerkingen">Opmerkingen:</label>
            <textarea name="Opmerkingen">{{ old('Opmerkingen', $voertuig->Opmerkingen) }}</textarea>
        </div>


        <div>
            <button type="submit">Update</button>
        </div>
    </form>
</body>
</html>

</body>
</html>