package 'zsh'

execute 'change shell' do
  user node[:user]
  command 'chsh -s `which zsh`'
end
