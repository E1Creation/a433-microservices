# membuat image dari dockerfile yg ada didirektori sekarang
docker build -t item-app:v1 .
# mengecek list docker images
docker images
# membuat image baru dengan tag yg diberi dengan mereferensikkan id dari image asal
docker tag item-app:v1 ghcr.io/e1creation/item-app:v1
# melakukkan login docker dengan memasukkan username berupa email dan password dari environment lokal
echo $PASSWORD_DOCKER_GITHUB | docker login -u kurniawanplusayahibu@gmail.com --password-stdin ghcr.io
# menyimpan images pada remote registry yaitu github package
docker push ghcr.io/e1creation/item-app:v1
