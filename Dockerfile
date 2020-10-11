FROM python:3.5
MAINTAINER Prakash
RUN pip install Flask==0.11.1 redis==2.10.5
RUN useradd -ms /bin/bash admin
USER admin
COPY app /app
WORKDIR /app
CMD ["python", "app.py"] 



#-m: user home directory creation
#s: user login shell
