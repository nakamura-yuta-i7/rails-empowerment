class Person < ActiveRecord::Base
  belongs_to :employment_status
  belongs_to :department
  belongs_to :enrollment
  belongs_to :title
end
