# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.8-slim-buster

EXPOSE 5000

WORKDIR /app

# Install pip requirements
COPY . /app
RUN python -m pip install -r requirements.txt

CMD [ "python", "app.py" ]