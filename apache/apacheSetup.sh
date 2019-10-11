/usr/sbin/ufw allow 'Apache'

mkdir -p $DOCUMENT_ROOT $APACHE_LOG_DIR $SITE_AVAILABLE $SCRIPT_DIR

chown -R $USER:$USER $DOCUMENT_ROOT

chmod -R 755 $DOCUMENT_ROOT

a2ensite sampledomain.com.conf
a2dissite 000-default.conf
service apache2 restart

echo "ServerName sampledomain.com" > /etc/apache2/conf-available/servername.conf
a2enconf servername
