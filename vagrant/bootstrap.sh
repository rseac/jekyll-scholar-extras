#!/usr/bin/env bash

# Install the necessary gems
gem install --no-rdoc --no-ri bundler
gem install --no-rdoc --no-ri jekyll
gem install --no-rdoc --no-ri jekyll-scholar
gem install bundler 

# Clone the jekyll-scholar-extras repo
su vagrant

VERSION=0.1.3
HOME=/home/vagrant
cd $HOME
git clone https://git.uwaterloo.ca/caesr-pub/jekyll-scholar-extras.git
chown -R vagrant jekyll-scholar-extras
chgrp -R vagrant jekyll-scholar-extras
cd jekyll-scholar-extras
git pull
gem build jekyll-scholar-extras.gemspec 
gem install jekyll-scholar-extras-$VERSION.gem 

# Test
cp -r samples/jekyll-template $HOME
cd $HOME
chown -R vagrant jekyll-template
chgrp -R vagrant jekyll-template
cd $HOME/jekyll-template
jekyll build --trace
