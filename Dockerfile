FROM ubuntu
RUN sudo apt-get install apache2 -y
CMD ["apachectl","-D","FOREGROUND"]
EXPOSE 80
