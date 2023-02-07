class Doctor < ActiveRecord::Base
  # adds a .interns method to every instance
  has_many :interns, dependent: :destroy # :nullify :restrict
  has_many :consultations, dependent: :destroy
  has_many :patients, through: :consultations

  validates :first_name, :last_name, presence: { message: 'is empty!' }
  # validates :last_name, presence: true

  # example, if we had an email
  # validates :email, uniqueness: true, presence: true, format: { with: /\A.*@.oteros\.com\z/ }

  # validates the pair first_name + last_name
  # validates :last_name, uniqueness: { scope: :first_name }
end
