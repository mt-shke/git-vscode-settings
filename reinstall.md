<details>
<summary>Kali</summary>

VMWare

```js
VMWare kernel headers
// sudo apt-get update
// sudo apt-get dist-upgrade

// reboot

// sudo apt-get install linux-headers-$(uname -r)
```

```js
// sudo timedatectl list-timezones Europe/Paris
// git config --global init.defaultBranch main
```

</details>

```bash
# git config --global init.defaultBranch main
```

brave

```js
// sudo apt install curl

// sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

// echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

// sudo apt update

// sudo apt install brave-browser
```
