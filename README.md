# Ubuntu GitHub SSH - .env
Create an image to be able to edit files with nvim and make contributions to your GitHub.  
This image just gets me a read to go enviroment with the minimum resorces I need to start coding within a Ubuntu container using an bash interactive section.  
Obviously you should be apt to develop directly from the cli.  
It uses a .env file to store the environment variables.

## Credentials
I'm assuming you already have generated your SSH Keys, and that your Public Key is registered on your GitHub Account.

## Run
```bash
./run.sh
```

Or something without much setup
```bash
./build_image.sh && docker run -it github-ssh bash
```

## If the Container Stops
Most likely you accidentally stops the contianer just, start it and run a new intercative section with `exec`:  
```bash
docker start <container-id>
docker exec -it <container-id> bash
```

## Ubuntu container with Neovim
Run the container with Neovim properly installed:  
```bash
docker run -it ubuntu bash -c "apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y neovim && bash"
```
