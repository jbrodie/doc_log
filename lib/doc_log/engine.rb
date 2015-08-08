require 'doc_raptor'
require 'jquery-rails'
require 'sass-rails'
require 'sprockets'
require 'bootstrap-sass'
require 'quiet_assets'
require 'font-awesome-sass'
require 'kaminari'
require 'ransack'

module DocLog
  class Engine < ::Rails::Engine
    isolate_namespace DocLog

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths['db/migrate'].expanded.each do |expanded_path|
          app.config.paths['db/migrate'] << expanded_path
        end
      end
    end
  end
end
