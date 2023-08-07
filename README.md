A repo users mappájába kell bemásolni a publikus kulcsot tartalmazó (szöveges) fájlt. 
A fájlnév a user neve, a fájl tartalmazza a publikus kulcsot.

A pubkey_starter.sh indításával root-ként végigmegy az összes useren és az összes inventory_pubkey.yaml fájlban megadott hoston létrehozza őket (és a home könyvtárukat) amennyiben nem léteznek és feltölti a kulcsukat amennyiben még nincs feltöltve.

**Letöltés (abba a mappába, ahol éppen állsz):**
```git clone git@github.com:bm971/pubkey_deploy.git```

**Branchek:** listázás: ```git branch -a```
- master: alapverzió, adminnal nagyjából megegyezik, de nem érdemes használni
- admin: ha rendelkezel root joggal és több felhasználó kulcsát szeretnéd teríteni; branch váltás:```git checkout admin```
- user: ha csak a saját kulcsodat szeretnéd teríteni (nincs root jogod); branch váltás: ```git checkout user```

**HASZNÁLAT ELŐTT:**

- **ansible.cfg fájlban a *remote_usert* át kell írni a saját usernevedre**

- **inventory_pubkey.yaml fájlban a *filepath* változót át kell írni annak megfelelően, hogy hova klónoztad a repo-t**

- **inventory_pubkey.yaml fájlba be kell írni azokat a hostokat ahova teríteni akarod a kulcsodat**

- **szükséges ansible modul: posix ```ansible-galaxy collection install ansible.posix```**

- **szükséges: local és remote gépen ansible és python telepítve legyen. Ellenőrzés:```ansible --version```**

**HASZNÁLAT:**
- WSL-ből vagy a jumpról ahonnan eléred a hostokat (MobaXterm local terminálban nincs telepítve se a python sem az ansible, ha ezeket megcsináljátok, utána ott is működnie kell)
- ```./pubkey_starter.sh```
- **TÜRELMESEN KELL VÁRNI, MERT PERCEKIG IS ELTARTHAT!!!**