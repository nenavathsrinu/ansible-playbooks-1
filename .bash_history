cd
ssh-keygen 
ssh-copy-id ansadmin@172.31.11.77
ssh-copy-id ansadmin@172.31.9.233
ssh-copy-id ansadmin@172.31.9.223
ssh ansadmin@172.31.9.223
ssh ansadmin@172.31.11.77
sudo vi /etc/ansible/hosts 
sudo vi /etc/ansible/ansible.cfg 
ansible all --list-hosts
ansible webserver --list-hosts
ansible webserver[0] --list-hosts
ansible webserver[1] --list-hosts
ansible webserver[-1] --list-hosts
ansible webserver[0:1] --list-hosts
ansible webserver -m command -a "ls"
sudo vi /etc/ansible/ansible.cfg 
ansible webserver -m command -a "ls"
ansible webserver -m command -a "ls -la"
ansible webserver -m command -a "touch file-1"
vi /etc/ansible/ansible.cfg 
sudo vi /etc/ansible/ansible.cfg 
ansible webserver -m command -a "ls"
ansible webserver -m command -a "mkdir dir-1"
ansible webserver -m command -a "ls"
ansible webserver -m command -a "mkdir /tmp/dir-1"
ansible webserver[0] -m command -a "touch file-2"
ansible webserver[0:1] -m command -a "touch file-3"
ansible webserver -m command -a "yum install tree"
ansible webserver -m command -a "sudo yum install tree"
ansible webserver -m command -a "sudo yum install tree -y"
ansible webserver -m command -a "which tree"
ansible webserver -m command -a "sudo yum remove tree -y"
ansible webserver -m command -a "which tree"
ansible webserver[0] -m command -a "sudo yum install tree -y"
ansible webserver[1] -m command -a "sudo yum install tree -y"
ansible webserver -m command -a "yum install git -y" -b
ansible webserver -m command -a "which git"
ansible webserver -m command -a "yum remove git -y" -b
ansible webserver -m yum -a "name=git state=present" -b
ansible webserver -m yum -a "name=git state=absent" -b
ansible webserver -m command -a "which git"
ansible webserver -m yum -a "name=git state=absent" -b
ansible webserver -m yum -a "name=httpd state=present" -b
ansible webserver -m service -a "name=httpd state=started" -b
ansible webserver -m command -a "systemctl status httpd.service" -b
ansible webserver -m service -a "name=httpd state=stopped" -b
ansible webserver -m command -a "systemctl status httpd.service" -b
ansible webserver -m service -a "name=httpd" -b
ansible webserver -m user -a "name=hari state=present" -b
ansible webserver -m command -a "tail -3 /etc/passwd" -b
ansible webserver -m user -a "name=raj" -b
ansible webserver -m command -a "tail -3 /etc/passwd" -b
ansible webserver -m setup
ansible webserver -m setup -a "filter=*ipv4*"
ansible webserver[0] -m setup -a "filter=*ipv4*"
ansible webserver[0] -m setup 
sudo init 0
cd
history 
cd
vi create_user.yml
ls
ansible-playbook create_user.yml 
ls
ssh ansadmin@172.31.11.77
ls
ls -la
ssh-copy-id ansadmin@172.31.11.77
ssh-keygen 
ssh-copy-id ansadmin@172.31.11.77
ssh-copy-id ansadmin@172.31.9.223
ssh ansadmin@172.31.11.77
ansible-playbook create_user.yml 
ansible webserver -m command -a "tail -3 /etc/passwd"
cp create_user.yml create_user_again.yml
vi create_user_again.yml 
ansible-playbook create_user_again.yml 
vi create_user_again.yml 
vi create_user_again.yml 
ansible-playbook create_user_again.yml 
ansible-playbook create_user_again.yml 
ansible-playbook create_user_again.yml 
vi create_user_again.yml 
ansible-playbook create_user_again.yml 
ansible webserver -m command -a "tail -3 /etc/passwd"
cp create_user_again.yml create_user_oncemore.yml
vim create_user_oncemore.yml 
ansible-playbook create_user_oncemore.yml 
vim create_user_oncemore.yml 
vim create_user_oncemore.yml 
ansible-playbook create_user_oncemore.yml 
vim create_user_oncemore.yml 
ansible-playbook create_user_oncemore.yml 
vim create_user_oncemore.yml 
ansible-playbook create_user_oncemore.yml 
vim create_user_oncemore.yml 
ansible-playbook create_user_oncemore.yml 
vim create_user_oncemore.yml 
cp create_user_oncemore.yml install_packages
vim install_packages 
ansible-playbook install_packages 
vim install_packages 
ansible-playbook install_packages 
vim install_packages 
ansible-playbook install_packages 
cp install_packages install_git_package.yml
vim install_git_package.yml 
ansible-playbook install_git_package.yml 
vim install_git_package.yml 
ansible-playbook install_git_package.yml 
cp install_git_package.yml creating_file.yml
vim creating_file.yml 
ansible-playbook creating_file.yml 
vim creating_file.yml 
cp creating_file.yml deleting_file.yml
vim deleting_file.yml 
ansible-playbook deleting_file.yml 
ansible-playbook deleting_file.yml --syntax-check
vim deleting_file.yml 
ansible-playbook deleting_file.yml --syntax-check
vim deleting_file.yml 
ansible-playbook deleting_file.yml --syntax-check
ansible-playbook deleting_file.yml --check
vim deleting_file.yml 
ansible-playbook deleting_file.yml --check
cd
ls
cp creating_file.yml direcort_dir.yml
vim direcort_dir.yml 
ansible-playbook direcort_dir.yml 
cat direcort_dir.yml 
touch index.html
cat index.html 
vi index.html 
cp install_packages copy_fil.yml
vim copy_fil.yml 
ansible-playbook
ansible-playbook copy_fil.yml 
cp install_packages install_httpd.yml
vim install_httpd.yml 
ansible-playbook install_httpd.yml 
ansible webserver -m command -a "systemctl status httpd.service" -b
cp install_httpd.yml handler_httpd.yml
cp handler_httpd.yml 
vim handler_httpd.yml 
ansible webserver -m command -a "yum remove httpd" -b
ansible webserver -m command -a "yum remove httpd -y" -b
ansible-playbook handler_httpd.yml 
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml 
cat handler_httpd.yml 
---
- name: This play book install httpd packages
  hosts: webserver
  become: true
  tasks:
    - name: installing httpd package
      yum:
        name: httpd
        state: installed
      notify: copy file
      handlers:
    - name: httpd service starting
      service:
        name: httpd
        state: started
        notify: copy file
        handlers:
    - name: copy file
      copy:
        src: /home/ansadmin/index.html
        dest: /var/www/html---
- name: This play book install httpd packages
  hosts: webserver
  become: true
  tasks:
    - name: installing httpd package
      yum:
        name: httpd
        state: installed
      notify: copy file
      handlers:
    - name: httpd service starting
      service:
        name: httpd
        state: started
        notify: copy file
        handlers:
    - name: copy file
      copy:
        src: /home/ansadmin/index.html
ansible-playbook handler_httpd.yml --sytax-check
ansible-playbook handler_httpd.yml --syntax-check
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml --syntax-check
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml --syntax-check
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml --syntax-check
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml --syntax-check
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml --syntax-check
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml --syntax-check
vim handler_httpd.yml 
vim hand_httpd.yml
ansible-playbook hand_httpd.yml --syntax-check
vim hand_httpd.yml
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml --syntax-check
vim handler_httpd.yml 
cat handler_httpd.yml 
ansible-playbook handler_httpd.yml --syntax-check
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml --syntax-check
ansible-playbook handler_httpd.yml 
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml 
vim handler_httpd.yml 
ansible-playbook handler_httpd.yml 
cp install_httpd.yml install_apache.yml
vim install_apache.yml 
cat install_apache.yml 
ansible-playbook install_apache.yml 
vim install_apache.yml 
ansible-playbook install_apache.yml 
vim install_apache.yml 
ansible-playbook install_apache.yml 
vim install_apache.yml 
ansible-playbook install_apache.yml 
vim install_apache.yml 
ansible-playbook install_apache.yml 
vim install_apache.yml 
ansible-playbook install_apache.yml --syntax-check
ansible-playbook install_apache.yml 
vim install_apache.yml 
ansible-playbook install_apache.yml 
vim install_apache.yml 
cat install_apache.yml 
cat handler_httpd.yml 
cat install_apache.yml 
init 0
sudo init0
sudo init 0
cd
ks
ls
cat install_apache.yml 
cp install_apache.yml compltete.webserver.yml
vim compltete.webserver.yml 
cat compltete.webserver.yml 
vim compltete.webserver.yml 
ansible-playbook compltete.webserver.yml --syntax-check
cat compltete.webserver.yml 
ansible-playbook compltete.webserver.yml --check
ls
pwd
vim compltete.webserver.yml 
ansible-playbook compltete.webserver.yml --check
vim compltete.webserver.yml 
ansible-playbook compltete.webserver.yml --check
vim compltete.webserver.yml 
rm rf compltete.webserver.yml 
sudo rm rf compltete.webserver.yml 
vim compltet.webserver.yml
ansible-playbook compltete.webserver.yml --check
vim compltet.webserver.yml
ansible-playbook compltet.webserver.yml --check
vim compltet.webserver.yml
ansible-playbook compltet.webserver.yml --check
vim compltet.webserver.yml
ansible-playbook compltet.webserver.yml --check
vim compltet.webserver.yml
ansible-playbook compltet.webserver.yml --check
vim compltet.webserver.yml
ansible-playbook compltet.webserver.yml --check
ls
cat index.html 
ansible-playbook compltet.webserver.yml --check
vim compltet.webserver.yml
ansible-playbook compltet.webserver.yml --check
vim compltet.webserver.yml
cat compltet.webserver.yml
ansible-playbook compltet.webserver.yml --check
ansible-playbook compltet.webserver.yml --syntax-check
cat compltet.webserver.yml
vim compltet.webserver.yml
ansible-playbook compltet.webserver.yml --syntax-check
ansible-playbook compltet.webserver.yml check
ansible-playbook compltet.webserver.yml --check
ansible-playbook copy_fil.yml --check
vim compltet.webserver.yml
cp install_packages install_multiple_packages.yml
vim install_multiple_packages.yml 
ansible-playbook install_multiple_packages.yml --check 
cat install_multiple_packages.yml 
ansible-playbook install_multiple_packages.yml 
vim setup_tomcat.yml
ansible-playbook setup_tomcat.yml --syntax-check
ansible-playbook setup_tomcat.yml --check
vim setup_tomcat.yml
ansible-playbook setup_tomcat.yml --check
ansible-playbook setup_tomcat.yml 
vim setup_tomcat.yml
ansible-playbook setup_tomcat.yml --check-syntax
clear
ansible-playbook setup_tomcat.yml --syntax-check
ansible-playbook setup_tomcat.yml --check
ls
vim setup_tomcat.yml 
vim setup_tomcat.yml
ansible-playbook setup_tomcat.yml --check
vim setup_tomcat.yml
ansible-playbook setup_tomcat.yml --check
vim setup_tomcat.yml
ansible-playbook setup_tomcat.yml --check
vim setup_tomcat.yml
ansible-playbook setup_tomcat.yml --check
vim setup_tomcat.yml
ansible-playbook setup_tomcat.yml 
cat setup_tomcat.yml 
cd
clear
ls
cat create_user.yml 
ansible-playbook create_user.yml 
ls
vim compltet.webserver.yml 
ansible-playbook compltet.webserver.yml --check 
vim compltet.webserver.yml 
ansible-playbook compltet.webserver.yml --check 
clear
vim compltet.webserver.yml 
ansible-playbook compltet.webserver.yml --check 
vim compltet.webserver.yml 
ansible-playbook compltet.webserver.yml --check 
vim compltet.webserver.yml 
rm -rf compltet.webserver.yml 
ls
vim compltet.webserver.yml 
init 6
sudo init 6
cd
vim compltet.webserver.yml 
vim c_webserver.yml
ansible-playbook c_webserver.yml --check
vim c_webserver.yml.
vim c_webserver.yml
ansible-playbook c_webserver.yml --check
vim c_webserver.yml
ansible-playbook c_webserver.yml --check
vim c_webserver.yml
ansible-playbook c_webserver.yml --check
vim c_webserver.yml
ansible-playbook c_webserver.yml --check
cat c_webserver.yml
vim c_webserver.yml
ansible-playbook c_webserver.yml --check
vim c_webserver.yml
ansible-playbook c_webserver.yml --check
vim c_webserver.yml
ansible-playbook c_webserver.yml --check
history 
ansible webserver -m command -a "yum remove httpd -y" -b
ansible webserver -m command -a "yum remove http -y" -b
ansible-playbook c_webserver.yml 
vim create_user_var.yml
ansible-playbook create_user_var.yml 
vim create_user_var.yml
ansible-playbook create_user_var.yml 
vim create_user_var.yml
ansible-playbook create_user_var.yml 
vim create_user_var.yml
vim var_user_var.yml
vi user.yml
vim var_user_var.yml
ansible-playbook var_user_var.yml --check
mv var_user_var.yml new_user
ansible-playbook new_user --check
vim new_user 
ls
vim user.yml
ls -ll
vim new_user 
ansible-playbook new_user --check
vim user.yml 
ansible-playbook new_user --check
vim user.yml -e "user=alia"
ansible-playbook new_user -e "user=alia"
vim new_file_error.yml
ansible-playbook new_file_error.yml --check
vim new_file_error.yml
ansible-playbook new_file_error.yml --check
vim new_file_error.yml
ansible-playbook new_file_error.yml --check
vim new_file_error.yml
ansible-playbook new_file_error.yml --check
ansible webserver -m command -a "yum remove httpd -y" -b
ansible-playbook new_file_error.yml --check
vim new_file_error.yml
ansible-playbook new_file_error.yml --check
ansible-playbook new_file_error.yml 
ansible webserver -m command -a "yum remove httpd -y" -b
vim new_file_error.yml
ansible webserver -m command -a "yum remove httpd -y" -b
ansible-playbook new_file_error.yml 
vim new_file_error.yml
ansible webserver -m command -a "yum remove httpd -y" -b
ansible-playbook new_file_error.yml 
ansible webserver -m command -a "yum remove httpd -y" -b
vim new_file_error.yml
ansible-playbook new_file_error.yml 
ansible webserver -m command -a "yum remove httpd -y" -b
vim new_file_error.yml
ansible-playbook new_file_error.yml 
ansible webserver -m command -a "yum remove httpd -y" -b
vim new_file_error.yml
ls
vim new_file_error.yml
ansible-vault create myuser.yml
cat myuser.yml 
vim myuser.yml 
ansible-vault view myuser.yml
ansible-vault edit myuser.yml
nsible-vault rekkey myuser.yml
ansible-vault rekkey create_user.yml 
ansible-vault rekkey myuser.yml
ansible-vault rekey myuser.yml
ansible-vault decrypt myuser.yml
ansible-vault encrypt copy_file.yml
ls
cat copy_fil.yml 
ansible-vault encrypt copy_fil.yml 
ansible-galaxy init setup-web-role
sudo yum install tree -y 
tree setup-web-role/
rm -rf setup-web-role/vars/
rm -rf setup-web-role/templates/
rm -rf setup-web-role/main
rm -rf setup-web-role/README.md 
rm -rf setup-web-role/meta/
rm -rf setup-web-role/defaults/

rm -rf setup-web-role/tests/
tree setup-web-role/
vi setup-web-role/tasks/
vi setup-web-role/tasks/main.yml 
vi setup-web-role/handlers/
vi setup-web-role/handlers/main.yml 
vi setup-web-role/tasks/main.yml 
vi setup-web-role/handlers/main.yml 
vcd setup-web-role/files/
cd setup-web-role/files/
ls
cd 
ls
cp index.html setup-web-role/files/
cd setup-web-role/files/
ls
cd ..
ls
tree setup-web-role/
vi role-setup.yml
tree setup-web-role/
vi role-setup.yml
ansible-playbook role-setup.yml -check
vi setup-web-role/tasks/main.yml 
vi setup-web-role/handlers/main.yml 
ansible-playbook role-setup.yml -check
vi setup-web-role/handlers/main.yml 
ansible-playbook role-setup.yml -check
vi setup-web-role/tasks/main.yml 
ansible-playbook role-setup.yml -check
ssh ansadmin@172.31.9.223
cls
ansible-playbook role-setup.yml -check
ansible-playbook copy_fil.yml -check
ansible-playbook c_webserver.yml -check
vi /etc/ansible/hosts 
vi /etc/ansible/ansible.cfg 
ansible-playbook c_webserver.yml -check
ssh ansadmin@172.31.9.223

ansible-playbook c_webserver.yml -check
ansible-doc -t connection -l
ansible_ssh_host
ansible-playbook c_webserver.yml -check
init 6
cd
ansible-playbook c_webserver.yml -check
cd
cat compltet.webserver.yml 
cd
ansible-playbook c_webserver.yml -check
ansible-playbook role-setup.yml -check
vim setup-web-r
ansible-playbook c_webserver.yml -checkls
ls
vim role-setup.yml 
ansible-playbook c_webserver.yml -c heck
ansible-playbook c_webserver.yml -check
ansible-playbook c_webserver.yml 
ansible webserver -m command -a "yum remove httpd -y" -b
ansible-playbook role-setup.yml --check
ansible-playbook role-setup.yml 
ansible webserver -m command -a "yum remove httpd -y" -b
vi setup-web-role/tasks/main.yml 
ansible webserver -m command -a "yum remove httpd -y" -b
ansible-playbook role-setup.yml --check
ansible-playbook role-setup.yml 
iint 0
