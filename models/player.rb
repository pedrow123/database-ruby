require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3", :database => "Futebol.sqlite3"

class Player < ActiveRecord::Base
    belongs_to :team
end