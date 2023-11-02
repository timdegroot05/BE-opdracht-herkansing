<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instructeurs Lijst</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 8px 12px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body>

    <h1>Instructeurs</h1>

    <table>
        <thead>
            <tr>
                <th>Voornaam</th>
                <th>Tussenvoegsel</th>
                <th>Achternaam</th>
                <th>Mobiel</th>
                <th>Datum In Dienst</th>
            </tr>
        </thead>
        <tbody>
            @foreach($instructeurs as $instructeur)
                <tr>
                    <td>{{ $instructeur->Voornaam }}</td>
                    <td>{{ $instructeur->Tussenvoegsel }}</td>
                    <td>{{ $instructeur->Achternaam }}</td>
                    <td>{{ $instructeur->Mobiel }}</td>
                    <td>{{ $instructeur->DatumInDienst }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>


</body>

</html>
