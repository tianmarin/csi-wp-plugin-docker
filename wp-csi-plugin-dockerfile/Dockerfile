#WP CSI Plugin Editor
FROM amazonlinux
MAINTAINER tian.marin@gmail.com

#Update and install basic packages
RUN yum update -y && yum -y install git vi

#Install NPM (nodejs) & Gulp & Bower
RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - && yum -y install nodejs

#Download wp-csi-plugin
#RUN mkdir -p /usr/src/ && git clone https://github.com/tianmarin/csi-wp-plugin.git

#Install wp-csi-plugin
#RUN  git clone https://github.com/tianmarin/csi-wp-plugin.git && chmod -R 777 csi-wp-plugin

#WORKDIR /var/www/html/wp-content/plugins/csi-wp-plugin/

#Install NPM (nodejs) & Gulp & Bower
RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - && yum -y install nodejs
#RUN npm install
#Install gulp globally just to manage to run the CMD in exec form -> CMD ["executable", "param1"]
#RUN npm install gulp -g

#CMD ["gulp", "browser-sync"]
#CMD gulp browser-sync
RUN mkdir /plugins
WORKDIR /plugins
COPY docker-entrypoint.sh /usr/local/sbin/
RUN chmod 755 /usr/local/sbin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
