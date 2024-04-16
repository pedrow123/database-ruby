require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
     :database => "Futebol.sqlite3" 
 
ActiveRecord::Base.connection.create_table :coaches do |t|  
  t.string :name_coach
  t.string :tactic
  t.references :team, foreign_key: true  
end
 