users:

  testuser1:
    fullname: Test Name
    uid: 1007
    gid: 1007
    samba_config:
      - password: 'asdf'
    groups:
      - Users
    pub_ssh_keys:
      - ssh-rsa blablalba testuser1

  testuser2:
    fullname: Test Name
    groups:
      - Users
    pub_ssh_keys:
      - ssh-rsa blablalba testuser2
