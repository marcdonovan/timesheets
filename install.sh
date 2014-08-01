
# to install Ruby, Cukes and Watir on a Mac, run the following (not as root). Don't use the Ruby that comes with
# homebrew (Ruby 2.x)

curl -L get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm list known
rvm install 1.9.3 # if this fails, run again - takes an hour or so to finish

gem update --system
gem install rspec --no-ri --no-rdoc  # this is a nice to have, but not required for this
gem install watir-webdriver --no-ri --no-rdoc
gem install cucumber --no-ri --no-rdoc
gem install nokogiri --no-ri --no-rdoc

# download chromedriver http://chromedriver.storage.googleapis.com/index.html latest version. Put on path, ie: /usr/local/bin

