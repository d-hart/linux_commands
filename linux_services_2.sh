#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
#Services
service httpd start #Start the HTTPD service
systemctl start httpd #Start the HTTPD service
systemctl stop httpd #Stop HTTPD service
systemctl status httpd #Check HTTPD service Status
systemctl enable httpd #Configure httpd to start at startup
systemctl disable httpd #Configure HTTPD to not start at startup
#------------------------------------------------------------------------------------------------------------------------------#
#Systemd Services
/etc/systemd/system/my_app.service
    [Unit]
    Description="My python web application"

    [Service]
    ExecStart=/usr/bin/python3 /opt/code/my_app.py
    ExecStartPre=/opt/code/configure_db.sh
    ExecStartPost=/opt/code/email_status.sh

    Restart=always
    
    [Install]
    WantedBy=multi-user.target
systemctl daemon-reload #Let systemd know there is a new service configured
systemctl start my_app #Start the service you created
systemctl status my_app #Check the status of the service you created
systemctl stop my_app #Stop the service you created
