<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Voertuigen List</title>
</head>
<body>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h2 {
            text-align: center;
            margin-top: 30px;
        }
        ul {
            max-width: 600px;
            margin: 20px auto;
            padding: 0;
            list-style-type: none;
        }
        li {
            background-color: #fff;
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 4px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        a {
            float: right;
            background-color: #333;
            color: #fff;
            padding: 5px 10px;
            border-radius: 4px;
            text-decoration: none;
        }
        hr {
            border: 0;
            border-top: 1px solid #ddd;
            margin: 10px 0;
        }
    </style>
    <a href="{{ route('instructeurs.index') }}">View Instructeurs</a>
    <h2>Voertuigen</h2>
    <ul>
        @foreach ($voertuigen as $voertuig)
            <li>
                <strong>Kenteken:</strong> {{ $voertuig->Kenteken }} <br>
                <strong> Type:</strong> {{ $voertuig->Type }} <br>
                <strong> Bouwjaar:</strong> {{ $voertuig->Bouwjaar }} <br>
                <strong> Brandstof:</strong> {{ $voertuig->Brandstof }} <br>
                <strong> Is Actief:</strong> {{ $voertuig->IsActief ? 'Yes' : 'No' }} <br>
                <strong> Opmerkingen:</strong> {{ $voertuig->Opmerkingen }} <br>
                <a href="{{ route('voertuigen.edit', $voertuig->Id) }}">Edit</a>
            </li>
        @endforeach
    </ul>
</body>
</html>
