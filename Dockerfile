# Imagen base
FROM node:22

LABEL developer="ferran"

# Especificar el directorio de trabajo en la imagen docker
WORKDIR /app

# Copiar los fichero del proyecto
# Empezamos por los que cargan las dependencias
COPY package*.json ./

# Ahora necesitamos obtener los módulos
RUN npm install 

# Copiar el directorio de la aplicación
COPY . .

# Ejecuta la aplicación
CMD ["npm", "start"]

