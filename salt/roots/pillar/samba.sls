samba_sections:
  global:
    workgroup: MYGROUP
    server string: "Samba Server"
    printcap name: /etc/printcap
    load printers: yes
    log file: "/var/log/samba/%m.log"
    max log size: 50
    security: user
    dns proxy: no
  homes:
    comment: "Home Directories"
    browseable: no
    writeable: yes
  printers:
    comment: "All Printers"
    path: /var/spool/samba
    browseable: no
    guest ok: no
    writeable: no
    printable: yes
  sharename:
    comment: "This is a shared directory"
    browseable: yes
    writeable: yes
    valid users: '@sharegroup'
    force group: sharegroup
    create mask: 0660
    directory mask: 2770

samba_users:
   vagrant: 
     password: vagrant
   user2:
     password: user2sambapassword
