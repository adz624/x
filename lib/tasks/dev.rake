namespace :dev do

  desc "Rebuild system"
  task :build => ['db:drop', 'db:create', 'db:migrate', 'db:seed']
end