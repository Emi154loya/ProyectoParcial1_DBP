FROM ubuntu:latest
RUN apt-get update && apt-get install -y bash
COPY ProyectoPP.sh /usr/local/bin/ProyectoPP.sh
RUN chmod +x /usr/local/bin/ProyectoPP.sh
ENTRYPOINT ["/bin/bash", "/usr/local/bin/ProyectoPP.sh"]

