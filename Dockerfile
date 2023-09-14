FROM node:alpine

# Create a non-root user
RUN adduser -D myuser

# Switch to the non-root user
USER myuser

# Set the working directory
WORKDIR /app

# Copy your application code into the container
COPY . /app

# Install dependencies and start your Node.js application
RUN npm install
CMD ["npm", "start"]

LABEL maintainer "eric.muellenbach@yncrea.fr"

ADD app.js .

ENTRYPOINT [ "node", "app.js" ]
