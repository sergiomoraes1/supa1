# Use a imagem base do Node.js (para instalar o CLI via npm)
FROM node:18

# Atualize o sistema e instale ferramentas básicas
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && apt-get clean

# Crie um diretório de trabalho
WORKDIR /app

# Instale o Supabase CLI globalmente
RUN npm install supabase --save-dev

# Defina o comando padrão (shell interativo para executar comandos)
CMD ["bash"]
