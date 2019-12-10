FROM taisun/vdi-rdp:ubuntu
LABEL maintainer="rodriguezst"

RUN \
 echo "**** install additional apps ****" && \
 apt-get update && \
 add-apt-repository ppa:papirus/papirus && \
 DEBIAN_FRONTEND=noninteractive \
 apt-get install -y --install-recommends \
	arc-theme \
	papirus-icon-theme && \
 rm -rf \
	/var/lib/apt/lists/* \
	/var/tmp/* \
	/tmp/*

# add local files
COPY /ubunturoot /