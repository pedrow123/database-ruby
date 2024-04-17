require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3", :database => "Futebol.sqlite3"

class Team < ActiveRecord::Base
    has_and_belongs_to_many :championships, :dependent => :destroy
    has_many :players, :dependent => :destroy
    has_one :coach, :dependent => :destroy
end
