# Menggunakan base image golang:1.15-alpine
FROM golang:1.15-alpine

# Mengatur direktori kerja di dalam container
WORKDIR /go/src/github.com/asrofilnadib/karsajobs

# Mengatur environment variable GO111MODULE ke nilai "on"
ENV GO111MODULE=on

# Mengatur environment variable APP_PORT ke nilai "8080"
ENV APP_PORT=8080

# Menyalin file go.mod ke direktori kerja
COPY go.mod .

# Menyalin file go.sum ke direktori kerja
COPY go.sum .

# Menjalankan perintah go mod download untuk mengunduh dependensi
RUN go mod download

# Menyalin semua file dari direktori lokal ke direktori kerja di dalam container
COPY . .

# Membuat direktori /build dan menjalankan perintah go build untuk mengkompilasi kode
RUN mkdir /build; \
    go build -o /build/ ./...

# Mendeklarasikan bahwa aplikasi akan menggunakan port 8080
EXPOSE 8080

# Menentukan perintah default yang akan dijalankan saat container dimulai
CMD ["/build/web"]
