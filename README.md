# pythondev - Python Development

## Summary - Greg's Python Development Environment

This is a collection of a few things that I require to do development with python.

* git - Git is installed, and setup for me, specifically:
  * git config --global user.name "Greg Fausak"
  * git config --global user.email greg@tacodata.com
  * git config --global core.editor vi
  * git config --global push.default simple
* python - a basic 2.7 python environment
* pip - python installations
* grip - to view README.md markup before checkin
* gfausak - a user named gfausak:staff is setup, complete with a generated ssh key.

## Dependencies
* ubuntu:14.04 - base container

## EXPOSE

* 5000 - for grip.

## VOLUME

No volumes

## Run example:
```
docker run -p 5000:5000 -it --rm tacodata/pythondev /bin/bash
```

This runs the development environment in a container, mapping port 5000 through to our host (for grip).
I could use grip to view this file before checking it in to github to make sure the
markdown is correct.  Inside the container I would run:

```
grip
```

from the directory that contains the README.md file. Then, on a browser I could go to the hosts's IP:5000 to
view what the web page would look like (when it is hosted on github).

