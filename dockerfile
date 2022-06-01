FROM ubuntu:20.04
RUN apt-get update && \
apt-get install -y python3 pip && \
rm -rf /var/lib/apt/lists/* && \
pip install --no-cache-dir --upgrade pip && \
pip install --no-cache-dir flask configparser psycopg2-binary
CMD python3 /srv/app/web.py
