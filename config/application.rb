require File.expand_path('../boot', __FILE__)

require "rails"

%w(
  neo4j
  action_controller
  action_mailer
  sprockets
).each do |framework|
  begin
    require "#{framework}/railtie"
  rescue LoadError
  end
end

Bundler.require(*Rails.groups)

module FootballLeague
 class Application < Rails::Application
    config.autoload_paths << Rails.root.join('lib')

    config.generators do |g|
      g.orm :neo4j
    end

    config.neo4j.session_options = { basic_auth: { username: 'neo4j', password: 'Kalpaks12'} } 
    config.neo4j.session_type = :server_db 
    config.neo4j.session_path = 'http://localhost:7474'
  end
end