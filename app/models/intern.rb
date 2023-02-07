class Intern < ActiveRecord::Base
  # adds a .doctor method to every instance
  # there's a doctor_id FK
  belongs_to :doctor
end
