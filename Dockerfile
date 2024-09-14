FROM nginx:latest
RUN apt-get update && apt-get install -y curl
#RUN rm -f /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/ssl/cert
COPY ./generate-certificate.sh /etc/nginx/generate-certificate.sh
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN chmod +x /etc/nginx/generate-certificate.sh
CMD ["nginx", "-c", "/etc/nginx/nginx.conf"]
