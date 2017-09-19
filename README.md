# spree-project

This is a basic bare rails + spree project with a dedicated Dockerfile that enables running this spree app without any ruby\rails related installation/configuration.

## Pre requisitis
Docker installed :-)

## To run project:
```
docker build -t <your-image-name> .
docker run -p 3000:3000 --name <your-container-name> -d <your-image-name>
```

Live example:
```
docker build -t eyals/spree .
docker run -p 3000:3000 --name myspree -d eyals/spree
```

Entire repo is based on the exquisite Spree project which you can find [here](https://github.com/spree/spree). No credits taken.

Still for any questions or comments feel free to contact [me](https://github.com/eyalstoler).

