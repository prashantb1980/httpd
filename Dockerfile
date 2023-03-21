FROM public.ecr.aws/amazonlinux/amazonlinux:latest
RUN yum update -y
RUN yum install -y httpd

RUN service docker start
#change directory
RUN cd /var/www/html
RUN echo "This is a test website Version1" > index.html
EXPOSE 80
RUN systemctl enable httpd
RUN systemctl start httpd