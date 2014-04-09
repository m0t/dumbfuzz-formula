remote_install_req:
  pkg.installed:
    - pkgs:
      - xrdp
      - xfce4
      - gnome-terminal
      - cifs-utils

/home/test/.xsession:
  file.append:
    - text: xfce4-session
    
/home/test/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml:
  file.replace:
    - pattern: <property name="&lt;Super&gt;Tab" type="string" value="switch_window_key"/>
    - repl: <property name="&lt;Super&gt;Tab"  type="empty"/>
    - require:
      - pkg: remote_install_req

{#    
/etc/xrdp.ini:
  file.blockreplace:
    - marker_start: [xrdp1]
    - marker_end: [xrdp2]
    - content: 
        name=sesman-Xvnc
        lib=libvnc.so
        username=ask
        password=ask
        ip=127.0.0.1
        port=5910
#}    