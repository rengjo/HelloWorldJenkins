# Ofizielles Python-Images als Basisimage
FROM python:3.10

# Setzen Arbeitsverzeichnisses innerhalb Containers
WORKDIR /app

# Kopiere Dateien requirements.txt und Anwendungsdatei in Arbeitsverzeichnis des Containers
COPY requirements.txt .
COPY hello_world.py .

# Installation Python-Abhängigkeiten
RUN pip install --no-cache-dir -r requirements.txt

# Exponieren des Ports, auf dem die Flask-Anwendung lauscht (standardmäßig 5000)
EXPOSE 5000

# Definieren des Befehls, der ausgeführt wird, wenn der Container gestartet wird
CMD ["python", "hello_world.py"]
