require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
     :database => "Futebol.sqlite3" 
 
ActiveRecord::Base.connection.create_table :teams do |t|  
  t.string :name_team
  t.string :foundation
  t.string :invoicing
end