echo "SMB文件共享传播的蠕虫病毒攻击方案"
echo "请右键以管理员身份运行"
echo "正在关闭并禁用445端口"
netsh firewall set opmode enable
netsh advfirewall firewall add rule name="venus445" dir=in protocol=tcp localport=445 action=block
netsh advfirewall firewall add rule name="venus135" dir=in protocol=tcp localport=135 action=block
netsh advfirewall firewall add rule name="venus138" dir=in protocol=tcp localport=138 action=block
netsh advfirewall firewall add rule name="venus137" dir=in protocol=tcp localport=137 action=block
netsh advfirewall firewall add rule name="venus139" dir=in protocol=tcp localport=139 action=block

echo "针对xp系统备用方法"
netsh firewall set portopening protocol = ALL port = 445 name = 445 mode = DISABLE scope = ALL profile = ALL 
netsh firewall set portopening protocol = ALL port = 135 name = 135 mode = DISABLE scope = ALL profile = ALL 
netsh firewall set portopening protocol = ALL port = 138 name = 138 mode = DISABLE scope = ALL profile = ALL 
netsh firewall set portopening protocol = ALL port = 137 name = 137 mode = DISABLE scope = ALL profile = ALL 
netsh firewall set portopening protocol = ALL port = 139 name = 139 mode = DISABLE scope = ALL profile = ALL 