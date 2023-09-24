FROM python:3.7

WORKDIR /app
COPY requirements.txt ./requirements.txt
ADD ./output ./output
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["./output/app.py"]