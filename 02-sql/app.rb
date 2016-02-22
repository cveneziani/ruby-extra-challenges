require 'sqlite3'

# Connect to database
db_file_path = File.join(__dir__, 'db/games-ruby.db')
DB = SQLite3::Database.new(db_file_path)

# Load all models
Dir["#{__dir__}/app/models/*.rb"].each { |file| require_relative file }

# TODO: create games / find them / save them / etc.
