![logo](https://turbolab.it/immagini/max/ubuntu-20.04-come-scaricare-pacchetti-.deb-apt-installarli-offline-desktop-server-linea-comando-14782.img)

# apt-install-offline
Collect, download and offline-install packages on Ubuntu.

The provided `setup.sh` auto-installs/updates the code.

**Parli italiano?** » Leggi: [Come scaricare i pacchetti .deb di apt per installarli offline (desktop e server, linea di comando)](https://turbolab.it/2279)

# 1. Install the tool
On an Internet-connected PC, `cd` to your USB flash drive and run this:

`sudo apt install curl -y -qq && curl -s https://raw.githubusercontent.com/TurboLabIt/apt-install-offline/master/setup.sh | sudo sh`

# 2. Collect
Connect the USB flash drive to your offline PC and collect the file(s) needed to install the package(s) you want:

`sudo bash 1-build-list.sh "wpasupplicant wireless-tools"`

# 3. Download the files
Re-connect the USB flash drive to your Internet-connected PC and download the reqired file(s):

`sudo bash 2-download-list.sh`

# 4. Offline-install
Re-connect the USB flash drive to your offline PC and... offline-install the package(s)

`sudo bash 3-install-offline.sh`

Done!

# Guides/reviews

* **Italiano** (TurboLab.it): [Come scaricare i pacchetti .deb di apt per installarli offline (desktop e server, linea di comando)](https://turbolab.it/2279)

# Social

* **English**: [Reddit on /r/Ubuntu]()
