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

<h1>Registrace na letní dětský tábor</h1>
<br>
<form class="row g-3" action="/" method="post">
    <div class="mb-3">
        <label for="jmeno" class="form-label">Jméno:</label>
        [@spring.formInput path="form.jmeno" /]
        <div class="mb-3">[@spring.showErrors "<br>"/]</div>

        <label for="prijmeni" class="form-label">Příjmení:</label>
        [@spring.formInput path="form.prijmeni" /]
        <div class="mb-3">[@spring.showErrors "<br>"/]</div>

        <label for="datumNarozeni" class="form-label">Datum narození:</label>
        [@spring.formInput path="form.datumNarozeni" fieldType="date"/]
        <div class="mb-3">[@spring.showErrors "<br>"/]</div>

        <label for="pohlavi" class="form-label">Pohlaví:</label>
        [@spring.formSingleSelect path="form.pohlavi" options={
        "dívka": "dívka",
        "chlapec": "chlapec"
        } /]
        <div class="mb-3">[@spring.showErrors "<br>"/]</div>

        <label for="turnus" class="form-label">Turnus:</label>
        [@spring.formSingleSelect path="form.turnus" options={
        "turnus-1": "4.-10.července 2023",
        "turnus-2": "12.-20.července 2023",
        "turnus-3": "1.-11.srpna 2023"
        } /]
        <div class="mb-3">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="form-label">E-mail na rodiče:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="mb-3">[@spring.showErrors "<br>"/]</div>

        <label for="telefon" class="form-label">Telefon na rodiče:</label>
        [@spring.formInput path="form.telefon" /]
        <div class="mb-3">[@spring.showErrors "<br>"/]</div>
    </div>

    <div class="mb-3">
    <button class="btn btn-primary" type="submit">Odeslat</button>
    </div>
    </form>
</body>
</html>
