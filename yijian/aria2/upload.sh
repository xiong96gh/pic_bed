wget https://www.moerats.com/usr/down/Aria2/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm 
rpm -ivh rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm 
yum -y install aria2

mkdir /etc/aria2/
cat /dev/null > /etc/aria2/aria2.session
wget https://www.moerats.com/usr/down/Aria2/aria2.conf -O /etc/aria2/aria2.conf

wget https://www.moerats.com/usr/down/Aria2/aria2 -O /etc/init.d/aria2
chmod +x /etc/init.d/aria2
echo "/etc/init.d/aria2 start">> /etc/rc.local
/etc/init.d/aria2 start
iptables -A INPUT -p tcp --dport 6800 -j ACCEPT

#lip = /sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"

echo "================================================="
echo "Aria2 RPC Address : your ip:6800/jsonrpc"
echo "================================================="
