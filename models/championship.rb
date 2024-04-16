require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3", :database => "Futebol.sqlite3"

class Championship < ActiveRecord::Base
    has_and_belongs_to_many :teams, :dependent => :destroy
end