require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
     :database => "Futebol.sqlite3" 
 
ActiveRecord::Base.connection.create_table :championships_teams, id: false do |t|  
  t.references :championship
  t.references :team
end