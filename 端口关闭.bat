echo "SMB�ļ�����������没����������"
echo "���Ҽ��Թ���Ա�������"
echo "���ڹرղ�����445�˿�"
netsh firewall set opmode enable
netsh advfirewall firewall add rule name="venus445" dir=in protocol=tcp localport=445 action=block
netsh advfirewall firewall add rule name="venus135" dir=in protocol=tcp localport=135 action=block
netsh advfirewall firewall add rule name="venus138" dir=in protocol=tcp localport=138 action=block
netsh advfirewall firewall add rule name="venus137" dir=in protocol=tcp localport=137 action=block
netsh advfirewall firewall add rule name="venus139" dir=in protocol=tcp localport=139 action=block

echo "���xpϵͳ���÷���"
netsh firewall set portopening protocol = ALL port = 445 name = 445 mode = DISABLE scope = ALL profile = ALL 
netsh firewall set portopening protocol = ALL port = 135 name = 135 mode = DISABLE scope = ALL profile = ALL 
netsh firewall set portopening protocol = ALL port = 138 name = 138 mode = DISABLE scope = ALL profile = ALL 
netsh firewall set portopening protocol = ALL port = 137 name = 137 mode = DISABLE scope = ALL profile = ALL 
netsh firewall set portopening protocol = ALL port = 139 name = 139 mode = DISABLE scope = ALL profile = ALL 