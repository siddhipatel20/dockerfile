FROM docker.io/ubuntu

LABEL "com.example.vendor"="ACME Incorporated"
LABEL com.example.label-with-value="foo"
LABEL version="1.0"
LABEL description="This text illustrates \
that label-values can span multiple lines."

MAINTAINER abcl@simpli.com



COPY myfile.txt /root/myfile.txt

ADD https://www.docker.com/wp-content/uploads/2022/03/horizontal-logo-monochromatic-white.png /root/logo.png
RUN apt update -y; echo "hello there" > /root/simplilearn.txt; apt install iputils-ping -y

ENTRYPOINT ["ping"]
CMD ["google.com"]
