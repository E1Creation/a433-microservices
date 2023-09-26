#mengambil image dari node:14-alpine
FROM node:14-alpine
#membuat working direktori /app dan masuk kedalamnya
WORKDIR /app
#copy file-file/folder-folder yg ada didirektori diluar kontainer dan dipindahkan ke kontainer
COPY . /app
# membuat environment variabel NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=192.168.1.5
# menjalankan npm install untuk production dan melakukan build
RUN npm install --production --unsafe-perm && npm run build
# menggunakkan port 8080
EXPOSE 8080
# saat container dah dibuat dan menjalankan npm start
CMD ["npm", "start"]