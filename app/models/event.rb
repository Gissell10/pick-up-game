class Event < ApplicationRecord
    belongs_to :sport, :optional => true
    has_and_belongs_to_many :users 
end
