require 'toura_app/lib/toura_app_server'

# WARNING: This file is for Toura internal use and will be removed.

desc "Run a development server (WARNING: This task is for Toura internal use and will be removed)"
task :serve, [:port] do |t, args|
  Rake::Task['sinatra'].invoke(args)
end

task :sinatra do |t, args|
  args.with_defaults(:port => '4000')
  TouraAPPServer.run! :host => 'localhost', :port => args.port
end

