# Menggunakan base image node:14.21-alpine sebagai builder
FROM node:14-alpine as builder

# Mengatur direktori kerja di dalam container ke /app
WORKDIR /app

# Menyalin package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# Menjalankan perintah npm install untuk mengunduh dan menginstal dependensi
RUN npm install

# Menyalin seluruh konten dari direktori "Backend" ke direktori kerja
COPY . .

# Menjalankan perintah npm run build untuk melakukan proses build
RUN npm run build

# Mendeklarasikan bahwa aplikasi akan menggunakan port 8000
EXPOSE 8000

# Menentukan perintah default yang akan dijalankan saat container dimulai
CMD [ "npm", "run", "serve" ]
