FROM tensorflow/tensorflow:1.12.3-py3

RUN apt-get update && apt-get install -y libsm6 libxext6 libxrender-dev

COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt

# Future Peter: Stop trying to add NotebookApp.token
