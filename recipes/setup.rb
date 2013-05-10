%w[vim zsh].each do |pkg|
  package pkg do
    action :install
  end
end

user 'vagrant' do
  shell '/bin/zsh'
end

git '/home/vagrant/dotfiles' do
  repository 'git://github.com/morygonzalez/dotfiles.git'
  reference 'master'
  action :checkout
end
