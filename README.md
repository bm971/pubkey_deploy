A home könvytár .ssh mappájában id_*.pub elnevezésű fájlokat keresi (/home/{{ remote_user }}/.ssh/id_*.pub')

Az admin branch-el több user kulcsát is szét lehet teríteni.

A pubkey_starter.sh indításával pingeli a hostokat (ezzel létrejön a home könyvár, ha nem létezne), majd a home könyvtár .ssh mappájában talált publikus kulcs tartalmát kiolvassa és az inventory_pubkey.yaml-ben megadott hostokra feltölti a kulcsot, amennyiben még nincs feltöltve.

**FONTOS:**
Csak olyan hostokon működik, ahol azonos a jelszó!!!

**Letöltés (abba a mappába, ahol éppen állsz):**
```git clone git@github.com:bm971/pubkey_deploy.git```

**HASZNÁLAT ELŐTT:**

- **ansible.cfg fájlban a *remote_usert* át kell írni a saját usernevedre**

- **inventory_pubkey.yaml fájlba be kell írni a *filepath* változóba a publikus kulcs elérési útvonalát és fájlnevét**

- **inventory_pubkey.yaml fájlba be kell írni azokat a hostokat ahova teríteni akarod a kulcsodat**

- **szükséges ansible modul: posix ```ansible-galaxy collection install ansible.posix```**

- **szükséges package: sshpass ```sudo apt install sshpass -y```**

- **szükséges: local és remote gépen ansible és python telepítve legyen. Ellenőrzés:```ansible --version```**

**HASZNÁLAT:**
- WSL-ből vagy a jumpról ahonnan eléred a hostokat (MobaXterm local terminálban nincs telepítve se a python sem az ansible, ha ezeket megcsináljátok, utána ott is működnie kell)
- ```./pubkey_starter.sh```
- egyszer meg kell adni a jelszót (mindegyik hoston azonosnak kell lennie)
- **TÜRELMESEN KELL VÁRNI, MERT PERCEKIG IS ELTARTHAT!!!**