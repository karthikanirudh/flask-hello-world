FROM python:alpine3.16
RUN /flask-hello-world
ADD . /flask-hello-world
RUN cd flask-hello-world && mv hello.py app.py && pip3 install flask 
EXPOSE 5000
Workdir /flask-hello-world
CMD ["flask","run","--host","0.0.0.0"]
