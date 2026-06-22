# Step 1: Use an operating system that already has Node.js pre-installed
FROM node:20-alpine

# Step 2: Create a folder inside the container where our app will live
WORKDIR /usr/src/app

# Step 3: COPY the package files from the GitHub Runner into the container
COPY package*.json ./

# Step 4: RUN npm install INSIDE the container to build dependencies
RUN npm install

# Step 5: COPY the rest of your application code into the container
COPY . .

# Step 6: Tell the container what command to run when it boots up
CMD ["node", "index.js"]
