microdnf install yum
rpm --import https://packages.treasuredata.com/GPG-KEY-td-agent

cat >/etc/yum.repos.d/td.repo <<'EOF';
[treasuredata]
name=TreasureData
baseurl=http://packages.treasuredata.com.s3.amazonaws.com/4/redhat/$releasever/$basearch
gpgcheck=1
gpgkey=https://packages.treasuredata.com/GPG-KEY-td-agent
EOF

yum check-update
yes | yum install -y td-agent make gcc
