#!/usr/bin/env bash
# Connecting without password using puppet

file { '/etc/ssh/ssh_config':
  ensure => present,
}

file_line { 'Turn off password auth':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
  match => '^#PasswordAuthentication',
}

file_line { 'Declare identity file',
  path  => '/etc/ssh/ssh_config',
  lien  => 'IdentifyFile ~/.ssh/school',
  match => '^#IdentifyFile',
}
