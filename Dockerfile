# Base image.
FROM node:11.10

# Working directory.
RUN     mkdir -p /opt/react_app
WORKDIR /opt/react_app

# Install dependencies.
COPY app/package.json /opt/react_app/package.json
RUN  npm install

# Start app.
CMD ["npm", "start"]
