class Department < ActiveRecord::Base
  has_many :person
  belongs_to :corporation
end
