#!/bin/bash
# Install Apache so the EC2 instance can serve the example website.
dnf install -y httpd

# Enable the service so Apache starts automatically after a reboot.
systemctl enable httpd

# Start Apache now instead of waiting for the next reboot.
systemctl start httpd

# Write the sample HTML page to Apache's default document root.
echo '<html><h1>Hello From Your Web Server!</h1></html>' > /var/www/html/index.html
