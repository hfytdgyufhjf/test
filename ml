curl "https://raw.githubusercontent.com/hfytdgyufhjf/test/master/client-common.txt" -o /etc/openvpn/client-common.txt
IP=$(curl -s ipv4.icanhazip.com)
cp /etc/openvpn/client-common.txt ~/ml.ovpn
echo "http-proxy    $IP  80" >> ~/ml.ovpn
        echo "<ca>" >> ~/ml.ovpn
        cat /etc/openvpn/easy-rsa/pki/ca.crt >> ~/ml.ovpn
        echo "</ca>" >> ~/ml.ovpn
        echo "<cert>" >> ~/ml.ovpn
        cat /etc/openvpn/easy-rsa/pki/issued/client.crt >> ~/ml.ovpn
        echo "</cert>" >> ~/ml.ovpn
        echo "<key>" >> ~/ml.ovpn
        cat /etc/openvpn/easy-rsa/pki/private/client.key >> ~/ml.ovpn
        echo "</key>" >> ~/ml.ovpn
        echo "<tls-auth>" >> ~/ml.ovpn
        cat /etc/openvpn/ta.key >> ~/ml.ovpn
        echo "</tls-auth>" >> ~/ml.ovpn
