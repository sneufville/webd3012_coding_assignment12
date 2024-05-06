FROM node:20-alpine
LABEL authors="sneufville"

# Set the working directory
WORKDIR /neufville_simon_ux_journey
ENV PATH /neufville_simon_ux_journey/node_modules/.bin:$PATH

# Copy package and lock files
COPY package.json .
COPY package-lock.json .

# Install dependencies silently
RUN npm install --silent

# Copy all files to destination
COPY . .

# Expose port
EXPOSE 6970

# Start storybook
CMD ["npm", "run", "storybook"]
