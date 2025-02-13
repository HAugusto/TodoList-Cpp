# Base Image
FROM ubuntu:latest

# Author
LABEL maintainer="higoranjos02@gmail.com"

# Executa os comandos para atualizar o sistema, instalar as dependências e limpar o cache
RUN sudo apt update && sudo apt upgrade -y \
    clang \
    llvm \
    cmake \
    make \
    git \
    qt6-base-dev \
    qt6-tools-dev \
    qt6-qmake \
    build-essential \
    && apt clean

# Define o diretório da aplicação
WORKDIR /src

# Copia todos os arquivos dentro da pasta "/src" para dentro do container
COPY . .

CMD ["bash"]