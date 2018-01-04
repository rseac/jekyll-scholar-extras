#!/usr/bin/env bash

#sudo su vagrant

source /usr/local/rvm/scripts/rvm

rvm use --default --install $1

shift

if (( $# ))
then gem install $@
fi

rvm cleanup all
