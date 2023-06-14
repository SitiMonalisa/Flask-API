# Menggunakan base image Python
FROM python:3.9

# Mengatur working directory
WORKDIR /app

# Menyalin file dependensi ke working directory
COPY requirements.txt .

# Menginstall dependensi
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin kode aplikasi ke working directory
COPY . .

ENV HOST 0.0.0.0

EXPOSE 8080

# Menjalankan aplikasi Flask
CMD ["python", "main.py"]
