FROM ubuntu:14.04

MAINTAINER Greg Fausak <greg@tacodata.com>

# the update is needed to get the sources.list set right, otherwise we
# won't find anything to get.
RUN apt-get update
RUN apt-get -y install \
	build-essential \
	python-dev \
	python-pip \
	git
RUN /bin/echo 'set editing-mode vi' > ~root/.inputrc
RUN git config --global user.name "Greg Fausak"
RUN git config --global user.email greg@tacodata.com
RUN git config --global core.editor vi


CMD [ '/bin/bash' ]

