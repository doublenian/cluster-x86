# cluster-x86

Note:在新机器上装Ubuntu13.10

1.在BIOS中禁止掉从其他地方boot(HUAWEI Dongle)

2.在BIOS中设置从插电启动(Chipset-->PCH-IO--> Restore AC Power LOSS-->power on)

3.在root下执行install.sh

4.exit后，在普通用户下执行install-2.sh


5.你需要把launch-reverse-ssh-tunneling.sh，troy_networkDetect TurnoffScreen/screenon TurnoffScreen/screenoff 加入到crontab -e 中

6.防止休眠，是在system settings 中选择“Brightness& Lock"

7.在Ubuntu中设置3G dongle

8.sudoers,tools/screenshot,launch-reverse-ssh-tunneling.sh

9.对于关闭显示器出现问题的，暂时解决办法是定时重启
