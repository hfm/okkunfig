include_recipe "../cookbooks/terminal/default.rb"
include_recipe "../cookbooks/vcs/default.rb"
include_recipe "../cookbooks/network/default.rb"
include_recipe "../cookbooks/browser/default.rb"
include_recipe "../cookbooks/vim/default.rb"
include_recipe "../cookbooks/android/default.rb"
include_recipe "../cookbooks/font/default.rb"
include_recipe "../cookbooks/gcp/default.rb"
include_recipe "../cookbooks/hashicorp/default.rb"
include_recipe "../cookbooks/docker/default.rb"

directory "#{Dir.home}/src"
directory "#{Dir.home}/bin"
directory "#{Dir.home}/usr/local/bin"