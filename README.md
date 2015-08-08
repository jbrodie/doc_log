# DocLog

DocLog allows you to sync your DocRaptor logs to your local environment to allow faster browsing and searching.
When working in a staging or production environment, you will no longer need to grant all your developers access to your DocRaptor account to be able to view and troubleshoot the generation of their file.

## Installation

Follow these simple steps to install this engine into your application.

- Include the gem in your gem file.
```
gem 'doc_log'
```

- Mount the engine in your routes file.
```
mount DocLog::Engine at: "/doclog"
```
As any normal engine, you have several different option when mounting the engine.  Please see http://edgeguides.rubyonrails.org/engines.html#mounting-the-engine for more additional information.

- Need to create the initializer in the sample application when installing the Engine
```
module DocLog
  class Engine < Rails::Engine
    config.api_key = 'yourdocraptorkey'
  end
end
```
- Schedule the sync through your favorite crontab manager.  The sync method can be called via the console as well:
```
DocLog::Sync.sync
```
- Run a db:migrate to create the table within your database before trying to sync

## Contibute

Fork the repo, and submit a pull request.
