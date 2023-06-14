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

# Menjalankan aplikasi Flask
CMD ["python", "main.py"]
