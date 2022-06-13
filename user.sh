ansible all -m group -a "name=ex294 state=present" --become
ansible all -m user -a "name=rhce password='{{'rhce_pass' | password_hash('sha512')}}' groups=ex294 uid=2021" --become
