# membuat image dari dockerfile yg ada didirektori sekarang
docker build -t item-app:v1 .
# mengecek list docker images
docker images
# membuat image baru dengan tag yg diberi dengan mereferensikkan id dari image asal
docker tag item-app:v1 kurniawans/item-app:v1
# melakukkan login docker dengan memasukkan username berupa email dan password dari environment lokal
echo $PASSWORD_DOCKER_HUB | docker login -u ksudirman74@gmail.com --password-stdin
# menyimpan images pada remote registry yaitu docker hub
docker push kurniawans/item-app:v1
