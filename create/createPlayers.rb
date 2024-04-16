require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
     :database => "Futebol.sqlite3" 
 
ActiveRecord::Base.connection.create_table :players do |t|  
  t.string :name_player
  t.string :position
  t.string :age
  t.references :team, foreign_key: true  
end