# dockerfile, Image, Container
FROM python:3.12

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt 

EXPOSE 8501

#CMD ["sh", "-c", "streamlit run app.py & tail -f /dev/null"]

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]