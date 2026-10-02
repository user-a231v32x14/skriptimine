# GitHowTo

## Mis see projekt on?

See on **GitHowTo** harjutuste repository, kus õppisin Git'i kasutama ja proovisin erinevaid Git'i käske läbi.

Põhimõte oli suht lihtne – teha muudatusi, need Gitiga ära salvestada ja vaadata, kuidas kogu see versioonihalduse asi töötab.

## Mida ma õppisin?

Harjutuste käigus sain selgemaks:

* kuidas Git repository töötab
* kuidas faile Git'i lisada
* kuidas muudatusi commit'ida
* kuidas vaadata, mis projektis muutunud on
* kuidas vaadata commit'ide ajalugu
* kuidas branch'e teha ja nende vahel liikuda
* kuidas branch'e merge'ida
* kuidas GitHubis repository't kasutada

## Kasutatud käsud

Kõige rohkem läksid kasutusse sellised käsud:

* `git status` – näitab, mis failidega parasjagu toimub.
* `git add` – paneb muudatused järgmise commit'i jaoks valmis.
* `git commit` – salvestab muudatused.
* `git log` – näitab varasemaid commit'e.
* `git branch` – branch'ide vaatamiseks ja tegemiseks.
* `git switch` – branch'i vahetamiseks.
* `git merge` – erinevate branch'ide ühendamiseks.

Näiteks tavaline asi oli:

git status
git add .
git commit -m "tegin muudatused"
git push

Ehk põhimõtteliselt teen muudatuse, vaatan üle, lükkan stagingusse, teen commit'i ja lõpuks panen GitHubi üles.

## Git'i põhitöövoog

Minu jaoks on põhitöövoog umbes selline:

1. Teen failis midagi.
2. `git status` abil vaatan, mis muutus.
3. `git add` abil lisan muudatused.
4. `git commit` abil salvestan need.
5. Kui vaja, teen `git push` ja saadan muudatused GitHubi.

Kui mingi asi läheb pekki, siis saab vähemalt ajaloost vaadata, mis varem toimus.

## Mis sai tehtud?

- [x] Git'i põhilised käsud läbi proovitud
- [x] Commit'e tehtud
- [x] Git'i ajalugu vaadatud
- [x] Branch'idega tegeletud
- [x] Merge läbi proovitud
- [x] GitHubi kasutatud
- [x] `README.md` täiendatud

## Kasulik link

[Git'i dokumentatsioon](https://git-scm.com/doc)

## Kokkuvõte

Üldiselt sai Git'i põhiidee selgeks. Alguses tundus neid käske päris palju, aga kui paar korda läbi teha, siis polegi väga hull.

Kõige tähtsamad asjad on vist `git status`, `git add`, `git commit` ja `git push`. Ülejäänud käsud tulevad vastavalt sellele, mida parasjagu vaja teha on.

Põhimõtteliselt töötab küll ja saab edasi minna.
