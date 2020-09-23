#!/bin/bash
echo "Starting"
sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><title>Praveen</title><body><h1>Welcome to  Google Cloud!</h1></body></html>' | sudo tee /var/www/html/index.html
