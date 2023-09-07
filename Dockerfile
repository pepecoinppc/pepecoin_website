FROM nginx
COPY ./src /usr/share/nginx/html

RUN apt update 
RUN apt install snapd -y
RUN systemctl start snapd
RUN systemctl enable --now snapd.socker
RUN snap install core

