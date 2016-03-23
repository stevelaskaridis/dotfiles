set :application, 'dotfiles'
set :repo_url, 'https://github.com/stevelaskaridis/dotfiles.git'

set :deploy_to, '/tmp'
set :use_sudo, false
set :log_level, :info

set :shell, ask('bash, zsh or both?', 'both', echo: true)
set :shell, fetch(:shell)

namespace :dotfiles do
  desc 'Deploy bash dotfiles'
  task :deploy_bash do
    on roles(:bash) do
      execute "#{deploy_to}/current/config/deploy_common.sh"
      execute "#{deploy_to}/current/config/deploy_bash.sh"
    end
  end

  desc 'Deploy zsh dotfiles'
  task :deploy_zsh do
    on roles(:zsh) do
      execute "#{deploy_to}/current/config/deploy_common.sh"
      execute "#{deploy_to}/current/config/deploy_zsh.sh"
    end
  end

  if fetch(:shell) == 'both'
    after 'deploy:publishing', :deploy_bash
    after 'deploy:publishing', :deploy_zsh
  else
    after 'deploy:publishing', "deploy_#{fetch(:shell)}".to_sym
  end
end
