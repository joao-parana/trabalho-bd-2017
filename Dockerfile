FROM postgres:9.5.6-alpine

#
# Esta imagem contém postgres versão :9.5.6 rodando numa distribuição alpine versão 3.5
# Em adição teremos NoSQL, Database Colunar, OO e Chave Valor
#

MAINTAINER João Antonio Ferreira "joao.parana@gmail.com"

ENV REFRESHED_AT 2017-03-16

RUN apk upgrade --update && \
    apk add --update libstdc++ curl ca-certificates bash openssh sudo unzip openssl

COPY install /tmp
 
WORKDIR /desenv

VOLUME /desenv/

EXPOSE 5432


CMD [ "bash" ]
