# Packer Templates For VMWare
Creating Packer templates of Windows Server 2016/2019, Ubuntu and CentOS/Oracle Linux for VMWare

## Where am I
In this repository you can clone VMWare Templates of popular OS for packer 1.5.2 (or newer)

## How to start
Just clone this repository to your local machine which has access to VMware Vcenter

### Ubuntu
1) Change variable values in **variables-ubuntu-18.json.example** and then rename it to **variables-ubuntu-18.json**
2) Change **user** to prefered username in preceed.cfg and replace ssh-rsa public-key with yours
3) Run command
```
make packer_build_ubuntu
```
4) After that you'll get an Ubuntu template, which has only ssh-key authorization.

**Important_notice: your management machine (where you're using packer) should have ssh access to your_vm_network and this network should have DHCP Server**

### Oracle Linux
1) Change variable values in **variables-oracle-7.json.example** and then rename it to **variables-oracle-7.json**
2) Change **user** to prefered username in kf7.cfg and replace ssh-rsa public-key with yours
3) Run command
```
make packer_build_oracle
```
4) After that you'll get an Oracle Linux template, which has only ssh-key authorization.

**Important_notice: your management machine (where you're using packer) should have ssh access to your_vm_network and this network should have DHCP Server**

### Windows Server
1) Change variable values in **variables-windows-server-2019.json.example** and then rename it to **variables-windows-server-2019.json**
2) Change **y0ur-Passw0rd** to prefered password in autounattend.xml (it appears 3 times in code)
3) Run command
```
make packer_build_windows
```
4) After that you'll get a Windows Server template.

**Important_notice: your management machine (where you're using packer) should have WinRM ports opened to your_vm_network and this network should have DHCP Server**
