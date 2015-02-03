FROM ubuntu:14.04

MAINTAINER Greg Fausak <greg@tacodata.com>

# the update is needed to get the sources.list set right, otherwise we
# won't find anything to get.
RUN apt-get update && apt-get -y install \
	build-essential \
	git \
	python-dev \
	python-pip

# when you run grip, do it in the directory with the README.md file
# in it.  simply type 'grip', then browse to port 5000 to see what the README.md
# file will look like when browsed after being checked in on github.
RUN pip install grip
EXPOSE 5000

# when using bash in this image as root i like to have
# vi based history from the command line
RUN /bin/echo 'set editing-mode vi' > ~root/.inputrc

# git configuration for me, obviously, change for someone else :-)
RUN git config --global user.name "Greg Fausak" && \
	git config --global user.email greg@tacodata.com &&\
	git config --global core.editor vi &&\
	git config --global push.default simple


CMD [ '/bin/bash' ]

