mkdir /var/folder{1,2}

cat /home/vagrant/file12.service > /etc/systemd/system/file12.service

systemctl daemon-reload
systemctl start file-mover.service
systemctl enable file-mover.service

cd /etc/cron.d
echo '* * * * 1-5 root w>>/var/log/logged-in.log' >mycron