From ubuntu

RUN apt-get -y update && apt-get -y install python

RUN pip install flask flask-mysql

COPY app.py /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
