FROM nginx:latest
WORKDIR /app

 

COPY . .
COPY devops.html /usr/share/nginx/html

 

RUN echo "$HOSTNAME" > devops.html
RUN echo "$(df -h)" >> devops.html

 

EXPOSE 80
