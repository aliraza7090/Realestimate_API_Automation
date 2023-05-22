FROM node:14
WORKDIR /app
RUN npm install -g newman
COPY Realestimate.postman_collection.json .
COPY Realestimate.postman_environment.json .

# Run the Postman collection
CMD ["newman", "run", "Realestimate.postman_collection.json", "-e", "Realestimate.postman_environment.json"]
