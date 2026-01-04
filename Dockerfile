# versão crua do node com quase nada, mas mais leve tbm
FROM node:alpine

WORKDIR /usr/app

#copiando o json para pasta de trabalho (comando anterior tem a pasta de trabalho)
COPY package*.json ./

RUN npm install

#comando para copiar tudo
COPY . .

#porta para o docker ouvir
EXPOSE 3000

#comando para a aplicação rodar
CMD ["npm", "start"]