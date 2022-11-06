[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registrace na letní dětský tábor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>

<h1>Rekapitulace registrace</h1>
<br>
<h2>Registrace proběhla v pořádku</h2>
<br>
<form class="row g-3" action="/" method="post">
    <div class="mb-3" >
        <label for="jmeno" class="form-label">Jméno:</label>
        <span class="value">${form.jmeno}</span>
        <br>
        <label for="prijmeni" class="form-label">Příjmení:</label>
        <span class="value">${form.prijmeni}</span>
        <br>
        <label for="datumNarozeni" class="form-label">Datum narození:</label>
        <span class="value">${form.datumNarozeni}</span>
        <br>
        <label for="pohlavi" class="form-label">Pohlaví:</label>
        <span class="value">${form.pohlavi}</span>
        <br>
        <label for="turnus" class="form-label">Turnus:</label>
        <span class="value">${form.turnus}</span>
        <br>
        <label for="email" class="form-label">E-mail na rodiče:</label>
        <span class="value">${form.email}</span>
        <br>
        <label for="telefon" class="form-label">Telefon na rodiče:</label>
        <span class="value">${form.telefon}</span>
    </div>
    </form>
</body>
</html>
