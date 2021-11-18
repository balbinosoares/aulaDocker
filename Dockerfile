FROM node:16-alpine
#Imagem do Docker hub - node 16 no Linux Alpine
WORKDIR /usr/app

# Instalar as dependências
# O caracter coringa é utilizado para garantir que tanto package.json e package-lock.json serão copiados
COPY package*.json ./


RUN npm install

#Copiar tudo da raiz para a raiz
COPY . .

#RUN npm start

EXPOSE 3000
CMD ["npm","start"]