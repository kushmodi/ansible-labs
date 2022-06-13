ansible prod -m file -a "path=/root/redhat/ex294 state=directory" --become
ansible prod -m file -a "path=/root/results state=directory" --become
ansible prod -m file -a "path=/root/redhat/ex294/results mode=g+rwx,o+rx owner=mark group=mark state=touch" --become
ansible prod -m file -a "path=/root/redhat/ex294/results dest=/root/results state=link" --become

