# Base Image
FROM ubuntu:latest

# Author
LABEL maintainer="higoranjos02@gmail.com"

# Executa os comandos para atualizar o sistema, instalar as dependências e limpar o cache
RUN apt update && apt upgrade -y && apt install -y \
    clang \
    llvm \
    cmake \
    make \
    git \
    curl \
    build-essential \
    && apt clean

# Define o diretório da aplicação
WORKDIR /workspace

# Copia todos os arquivos dentro da pasta "/src" para dentro do container
COPY . /workspace

CMD ["/bin/bash"]