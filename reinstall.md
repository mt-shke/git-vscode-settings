<details>
<summary>Reinstall Kali</summary>

surfshark

```bash
curl -f https://downloads.surfshark.com/linux/debian-install.sh --output surfshark-install.sh #gets the installation script
cat surfshark-install.sh #shows script's content
sh surfshark-install.sh #installs surfshark
```

```bash
# sudo timedatectl set-timezone Europe/Paris

# sudo apt install gimp
# sudo apt install git
# sudo apt install nodejs
# sudo apt install npm
```

brave

```bash
sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

 echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser
```

</details>

<details>
<summary>Kali VMWare</summary>

VMWare

```js

// chmod +rwx ./VMware-Player-Full-17.0.0-20800274.x86_64.bundle
// sudo ./VMwa...

VMWare kernel headers
// sudo apt-get update
// sudo apt-get dist-upgrade

// reboot

// sudo apt-get install linux-headers-$(uname -r)
```

</details>
