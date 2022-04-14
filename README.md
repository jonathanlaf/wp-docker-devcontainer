# WordPress Development Docker Boilerplate

This Dockerfile is ready for development purpose only. Please don't use on a production server.  

With this boilerplate, you'll be able to develop WordPress **plugins** & **themes**. 

It use docker-compose to manage **wordpress** + **mysql** + **adminer** & **mailhog**.

It also support `host.docker.internal` on a linux host.

For thoses who don't know **mailhog**, it's a service that trap all outgoing email into a web interface, so you can test email on your system and be sure no email will reach any inboxes. 

## Services Configuration
All the configuration reside in the **.env** file.

## How to use
    docker-compose up

You can access services through (update port with your configuration): 
* WordPress: http://localhost:8080
* Adminer: http://localhost:8181
* Mailhog: http://localhost:8025