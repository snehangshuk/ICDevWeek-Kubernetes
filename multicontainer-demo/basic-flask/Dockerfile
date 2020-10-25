FROM python:3.8

EXPOSE 8001

WORKDIR /app
ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

ADD . /app

ENV PORT 8001
CMD ["gunicorn", "app:app", "--config=config.py"]
