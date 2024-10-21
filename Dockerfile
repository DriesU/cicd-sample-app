# Use the official Node.js 20.x.x (LTS) Alpine version
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock files to the working directory
COPY package.json yarn.lock ./

# Install application dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]
