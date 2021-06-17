FROM debian:buster

RUN apt-get update && apt-get install -y ca-certificates offlineimap && rm -rf /var/lib/apt/lists

USER 1000

COPY offlineimaprc /.offlineimaprc
COPY offlineimap.py /offlineimap.py

CMD ["offlineimap", "-c", "/.offlineimaprc"]
