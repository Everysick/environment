TYPE?=macos

all: before mitamae after

before:
	sh ${PWD}/bin/clone_mitamae.sh

mitamae:
	${PWD}/bin/mitamae local -y nodes/$(TYPE).yml bootstrap.rb

after:
	rm ${PWD}/bin/mitamae
