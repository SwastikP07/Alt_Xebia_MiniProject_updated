FROM python:3.10

RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /app
WORKDIR /app

CMD ["streamlit", "run", "app.py", "--server.port=7860", "--server.address=0.0.0.0"]
