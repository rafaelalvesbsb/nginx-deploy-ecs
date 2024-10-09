# Usar a imagem oficial do NGINX e PHP
FROM php:8.2-fpm-alpine

# Instalar NGINX
RUN apk add --no-cache nginx

# Criar diretório de logs
RUN mkdir -p /run/nginx

# Copiar configuração básica do NGINX
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar arquivos do site para o container
COPY src /var/www/html

# Expor a porta 80
EXPOSE 80

# Comando para rodar o NGINX e o PHP juntos
CMD ["sh", "-c", "php-fpm -D && nginx -g 'daemon off;'"]