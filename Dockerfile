FROM ubuntu:16.04
# FROM bento:
MAINTAINER Trifon Trifonov <trifont@gmail.com>
RUN apt-get update -y	&& \
	apt-get install -y mc vim vim-nox \
    build-essential cmake ctags pkg-config apt-utils autoconf libtool \
    svn mercurial git \
    wget curl \
    zip bzip2 && \

  # Time zone(UTC+2)
  ln -fs /usr/share/zoneinfo/Europe/Sofia /etc/localtime && \
  dpkg-reconfigure -f noninteractive tzdata && \

	# Change to root folder
	cd && \

	# vim bundle & pathogen
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
	echo "execute pathogen#infect()" >> ~/.vimrc && \

	# vim neocomplete
	cd ~/.vim/bundle && \
	git clone https://github.com/Shougo/neocomplete.vim.git && \
	echo "let g:neocomplete#enable_at_startup = 1" >> ~/.vimrc

ADD vimrc /etc/vim/
