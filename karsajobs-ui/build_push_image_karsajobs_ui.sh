IMAGE="asrofilnadib/karsajobs-ui:latest"

echo "Membuat docker images..."
# Perintah untuk membuat Docker image dari Dockerfile
docker build -t $IMAGE .

echo "Mengubah nama sesuai dengan format docker registry"
# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages)
docker tag $IMAGE ghcr.io/$IMAGE

echo "Login ke Github Packages"
# Login ke Docker Hub (atau GitHub Packages)
echo "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" | docker login ghcr.io -u asrofilnadib --password-stdin

echo "Mengunggah image ke Github Packages"
# Mengunggah image ke Docker Hub (atau GitHub Packages)
docker push ghcr.io/$IMAGE