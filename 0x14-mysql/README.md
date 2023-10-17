This directory is about the 0x14. MySQL alx project
It is all about the installation of MySQL 5.7 on given servers
The following are the git cammands applied in order to achieve this
	- wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
	This is used to download the mysql repository
	- sudo dpkg -i mysql-apt-config_0.8.12-1_all.deb
	This is used to install the package after downloading it
	From the available options, select Ubuntu Bionic. 
	After that, select the MySQL Server & Cluster option. Then, select mysql-5.7 and finally select Ok.
	- sudo apt update
	Updates the APT repository
	- sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29
	Imports the missing gpg key
	- sudo apt update
	Update the APT repository one more time
	- sudo apt-cache policy mysql-server
	Checks whether MySQL 5.7 repository has been successfully installed
	- sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*
	Install the mysql-server 5.7.
	- mysql -u root -p
	Logs into the mysql-server
	- SELECT VERSION();
	Checks the version of the installed mysql-server
