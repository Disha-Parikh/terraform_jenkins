from fabric.api import *
from fabric.contrib.files import exists


env.hosts = ['15.206.124.173','13.232.72.153','13.126.116.163']
env.user = 'ubuntu'
env.key_file_name = '/home/einfochips/Downloads/laptop.pem'


@task
def install():
	sudo('apt-get update')
	sudo('apt-get install nginx')
	sudo('> /var/www/html/index.html')
	sudo('echo \'<html> <body> <p> Hello World from $(hostname -f) </p> </body> </html>\' >> /var/www/html/index.html')
	sudo('service nginx start')
	
