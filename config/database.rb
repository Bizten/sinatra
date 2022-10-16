database_name = "Garage"

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{database_name}
)
