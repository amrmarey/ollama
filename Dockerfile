FROM nginx:latest
#RUN apt-get update && apt-get install -y curl
#RUN mkdir -p /etc/nginx/ssl/cert
#RUN rm -f /etc/nginx/conf.d/default.conf

COPY ./nginx.conf /etc/nginx/nginx.conf
#COPY mime.types /etc/nginx/mime.types

#COPY generate-certificate.sh /etc/nginx/generate-certificate.sh

#RUN chmod +x /etc/nginx/generate-certificate.sh
#RUN bash -c /etc/nginx/generate-certificate.sh

#RUN chmod 600 -R /etc/nginx/ssl/cert/
#RUN chown root:root -R /etc/nginx/ssl/cert/
#RUN chmod 600 -R /etc/nginx/ssl/cert/
#RUN chmod 600 /etc/nginx/ssl/cert/privkey.pem


CMD ["nginx", "-c", "/etc/nginx/nginx.conf"]
