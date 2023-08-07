A repon belül egy users mappába kell bemásolni a publikus kulcsokat tartalmazó (szöveges) fájlokat. 
A fájlnév a user neve, a fájl tartalmazza a publikus kulcsot. **Nem szabad fájlkiterjesztést használni!!!!**

A pubkey_starter.sh indításával végigmegy az összes useren és az összes inventory_pubkey.yaml fájlban megadott hoston létrehozza őket (és a home könyvtárukat) amennyiben nem léteznek és feltölti a kulcsukat amennyiben még nincs feltöltve.

Klónozás: ```git clone ssh://git@bitbucket.idomsoft.hu:7999/~bakonyim/pubkey_deploy.git```

**HASZNÁLAT ELŐTT:**

- **ansible.cfg fájlban a remote_usert át kell írni a saját usernevedre**

- **inventory_pubkey.yaml fájlban a *filepath* változót át kell írni annak megfelelően, hogy hova klónoztad a repo-t**

- **inventory_pubkey.yaml fájlba be kell írni azokat a hostokat ahova teríteni akarod a kulcsokat**

- **létre kell hozni egy users nevű mappát, ami alá a publikus kulcsokat tartalmazó fájlokat be kell másolni; a fájlnév a user neve legyen (pl.: bakonyim)**

- **szükséges ansible modul: posix ```ansible-galaxy collection install ansible.posix```**

- **szükséges: local és remote gépeken ansible és python telepítve legyen. Ellenőrzés:```ansible --version```**

- **szükséges még: Galambos Dávid ssh configja https://confluence.idomsoft.hu/pages/viewpage.action?pageId=48891199**

- **ha kell sudo jelszó, akkor a pubkey_starter.sh-ban a playbookot a --ask-become-pass kapcsolóval kell indítani**

**HASZNÁLAT:**
- WSL-ből vagy a jumpról ahonnan eléred a hostokat (MobaXterm local terminálban nincs telepítve se a python sem az ansible, ha ezeket megcsináljátok, utána ott is működnie kell)
- ```./pubkey_starter.sh```
- **TÜRELMESEN KELL VÁRNI, MERT PERCEKIG IS ELTARTHAT!!!**