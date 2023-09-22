#Using Puppet, install flask from pip3
#flask is the package to be installed
#2.1.0 is the version of flask being installed
#pip3 is the source of flask being installed

package { 'flask':
  ensure  =>  '2.1.0',
  source  =>  'pip3',
}
