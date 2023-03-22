FROM public.ecr.aws/amazonlinux/amazonlinux:latest
RUN yum update -y
RUN yum install -y httpd

#change directory
RUN cd /var/www/html
RUN touch index.html
RUN echo "This is a test website Version1" >> index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]