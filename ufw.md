```bash
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing

ufw status
ufw enable

sudo dnf install ./ufw disablerepo=*
```

```bash
git clone https://github.com/fail2ban/fail2ban.git
cd fail2ban
sudo python setup.py install

systemctl start fail2ban
systemctl enable fail2ban
```
