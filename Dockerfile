# Use an official Nodejs runtime as a parent image
FROM node:carbon


# Create app directory, set as working directory
WORKDIR /usr/src/app

# Install any needed packages specified
RUN npm install

# Bundle app source
COPY . .

# Mark port 3000 available to the world outside this container
EXPOSE 3000

# Run app.js when the container launches
CMD [ "node", "app.js"]
