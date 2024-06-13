echo copy repo

[elasticsearch]
name=Elasticsearch repository for 8.x packages
baseurl=https://artifacts.elastic.co/packages/8.x/yum
gpgcheck=0
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md >/etc/yum.repos.d/elastic.repo

echo installing nginx
dnf install nginx -y
systemctl enable nginx
systemctl start nginx

echo install elasticsearch
dnf install elasticsearch -y
systemctl enable elasticsearch
systemctl start elasticsearch
systemctl daemon-reload

echo install kibana
dnf install kibana -y
systemctl enable kibana
systemctl start kibana
systemctl daemon-reload

echo install logstash
dnf install logstash -y
systemctl enable logstash
systemctl start logstash


