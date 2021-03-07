### switch to root 'sudo -i' before executing this script
### if failed, wait for at least 30 minutes before executing the script again (limitation by Let's Encrypt)

your_domain='your.domain.name'
curl https://get.acme.sh | sh
        ~/.acme.sh/acme.sh  --issue  -d $your_domain  --webroot /usr/share/nginx/html/
        ~/.acme.sh/acme.sh  --installcert  -d  $your_domain   \
        --key-file   /usr/src/trojan-cert/private.key \
        --fullchain-file /usr/src/trojan-cert/fullchain.cer #\
        #--reloadcmd  "systemctl force-reload  nginx.service"
ls -l /usr/src/trojan-cert
