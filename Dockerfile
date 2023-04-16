From ubuntu

RUN apt-get -y update && apt-get -y install python3

RUN pip install flask

COPY app.py /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
