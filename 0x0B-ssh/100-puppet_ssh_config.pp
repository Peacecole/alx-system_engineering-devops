#!/usr/bin/env bash
# Connecting without password using puppet

file { '/etc/ssh/ssh_config':
  ensure => present,			#configuration file available
}

file_line { 'Turn off password auth':
  path  => '/etc/ssh/ssh_config', 	#path to config file
  line  => 'PasswordAuthentication no', #command to password authentication
  match => '^#PasswordAuthentication',  #command to password authenticatio
}

file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',	 #path to config file
  lien  => 'IdentifyFile ~/.ssh/school', #location of the key file
  match => '^#IdentifyFile',		 #identify file
}
