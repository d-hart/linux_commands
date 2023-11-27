#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
service httpd start #start httpd service
systemctl start httpd #used to manage services on a systemd managed server
systemctl stop httpd #stop the running service
systemctl status httpd #check the status of a service
systemctl enable httpd #confiugure httpd to start at startup
systemctl disable httpd #configure httpd to not start at startup
#------------------------------------------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------------------------------------------#
#Run my locally developed app as a service using a unit configuration file
[Unit]
Description=My python web application #a description that allows others to understand what this service is about

#A systemd program can be configured as a systemd service at /etc/systemd/system my_app.service
[Service]
ExecStart= /usr/bin/python3 /opt/code/my_app.py #specify your command to use at the start of your application
ExecStartPre=/opr/code/configure_db.sh #configure commands or scripts that are to be started/run before your application
ExecStartPost=/opt/code/email_status.sh #configure commands or scripts that are to be started/run after your application
Restart=always #configure the service to automatically restart if it crashes

[Install]
WantedBy=multi-user.target #configures the app to automatically run when the system boots up
systemctl daemon-reload #lets the server know there is a new service configured
systemctl start my_app #starts the app you created as a service
systemctl status my_app #check the status of the app/service you created
systemctl stop my_app #stops the app you created to be a service
systemctl enable myapp #configures my_app service to start on bootup