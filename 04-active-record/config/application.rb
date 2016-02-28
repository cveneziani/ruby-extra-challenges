require 'active_record'
require 'sqlite3'
require 'yaml'

# Load the config/database.yml file and connect to the database
config_path = File.join(__dir__, 'database.yml')
ActiveRecord::Base.configurations = YAML.load_file(config_path)
ActiveRecord::Base.establish_connection(:development)

# Set logger so that we can actually view the SQL performed by ActiveRecord
logger = Logger.new(STDOUT)
logger.formatter = proc do |_severity, _datetime, _progname, message|
  "#{message}\n"
end

ActiveRecord::Base.logger = logger

# Load all models
Dir["#{__dir__}/../app/models/*.rb"].each { |file| require_relative file }
