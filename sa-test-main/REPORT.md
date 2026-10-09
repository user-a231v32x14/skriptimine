# Arvestustöö raport

Nimi:  KERT MINNIK
Variant: A  
Kuupäev:  09.10.2026

Kirjelda vähemalt **6 leitud probleemi**.

## Probleem 1
- Skript: disk_check.sh
- Mida skript näiliselt tegi: kuvas ketta "kasutus" %
- Mis oli tegelikult vale: kuvas ketta vabaruumi
- Kuidas vea avastasin: tegin df-h kasu ning utles kasutus % oli teine
- Millise käsuga kontrollisin: sellega kontrollisin df -h
- Parandus: muutsin 9 rea kalkulatsiooni
- Kuidas kontrollisin pärast parandust: tegin bash disk_check.sh ja df -h mis uhildusid
- Vajadusel exit code enne / pärast:

## Probleem 2
- Skript: service_check.sh
- Mida skript näiliselt tegi: kontrollis kas teenus "tootab"
- Mis oli tegelikult vale: kontrollis kas teenuse fail eksisteerib
- Kuidas vea avastasin: tegin systemctl is-active cron ja bash service_check.sh cron ning utles et active siis tegin systemctl stop cron ja systemctl is-active utles et ei ole active ja service_check.sh cron utles et on active
- Millise käsuga kontrollisin:
- Parandus: muutsin 7 reas ara systemctl list-unit-files ja asendasin systemctl is-active asemele
- Kuidas kontrollisin pärast parandust: nii nagu vea leidsin proovisin uuesti ule

## Probleem 3
- Skript: system_info.sh
- Mida skript näiliselt tegi: utles kogu malu
- Mis oli tegelikult vale: utles et malu on 2000mb ainult
- Kuidas vea avastasin: kaivitasin scripti utles malu vaga vahe vorreldes free -h tulemusega ja votsin skripti lahti seal oli 10 reas kalkulatsioonis mem asemel swap mis ei ole tegelik kogu malu
- Millise käsuga kontrollisin: free -h
- Parandus: muutsin 10 reas swap asemele mem
- Kuidas kontrollisin pärast parandust: tegin free -h ja kaivitasin skripti andmed klappisid

## Probleem 4
- Skript: user_check.sh
- Mida skript näiliselt tegi: kontrollis kas kasutaja eksisteerib
- Mis oli tegelikult vale: utles et keegi keda pole eksisteerib
- Kuidas vea avastasin: kaivitasin skripti ja utlesin et otsiks kasutajat Kasutaja_Pole_123 ning utles et eksisteerib
- Millise käsuga kontrollisin: kontrollisin tehes id Kasutaja_Pole_123 ning kasutajat ei eksisteeri minu masinas
- Parandus: 7 reas muutsin et otsiks grupi asemel et otsiks passwd failist kasutajakontot ja ge vois olla sama voi suurem ehk 0 voib olla 0 ja muutsin gt et ei saaks olla sama vaarset
- Kuidas kontrollisin pärast parandust: kontrollisin uuesti skripti kaivitades kas Kasutaja_Pole_123 eksisteerib ja enam ei eksisteeri

## Probleem 5
- Skript:
- Mida skript näiliselt tegi:
- Mis oli tegelikult vale:
- Kuidas vea avastasin:
- Millise käsuga kontrollisin:
- Parandus:
- Kuidas kontrollisin pärast parandust:

## Probleem 6
- Skript: backup.sh
- Mida skript näiliselt tegi: loi koopia ja utles see valmis
- Mis oli tegelikult vale: skript salvestas failid aga mitte nende sisu
- Kuidas vea avastasin: kaivitasin skripti siis vaatasin faili ja see utles et see pole arhiiv, tegin skripti lahti ja nagin et see kasutas find kasku mitte tar kasku
- Millise käsuga kontrollisin: cat backup.sh et vaatata faili
- Parandus: muutsin skripti et see kasutaks tar ja teeks paris arhiivi
- Kuidas kontrollisin pärast parandust: kasutasin skripti ja siis vaatasin kas fail tuleb lahti ja see on arhiiv ning koik tootas nagu pidi

## Uus funktsionaalsus
- Mida lisasin:
- Kuidas käivitada:
- Kuidas kontrollisin, et tulemus on õige:
