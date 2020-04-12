FROM localhost:5000/httpd-parent

USER 1001

EXPOSE 8080

RUN chgpr -R 0 /var/log/httpd  && chmod g=u -R /var/log/httpd

RUN sed "/s/listen 80/listen 8080" /etc/httpd/conf/httpd.conf
