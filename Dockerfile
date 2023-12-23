FROM python:3.9-alpine
ENV PIP_DISABLE_PIP_VERSION_CHECK=1

WORKDIR /code/
COPY ./requirements.txt ./requirements.txt 
RUN pip install -r ./requirements.txt

COPY . .
ENTRYPOINT ["sh", "./entrypoint.sh"]