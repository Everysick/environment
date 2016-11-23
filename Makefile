TYPE ?= macos

all: before mitamae after

before:
	wget https://github.com/k0kubun/mitamae/releases/download/v1.0.0/mitamae-x86_64-linux -O ${PWD}/bin/mitamae

mitamae:
	${PWD}/bin/mitamae local -y nodes/$(TYPE).yml bootstrap.rb

after:
	rm ${PWD}/bin/mitamae
