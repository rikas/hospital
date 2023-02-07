class Consultation < ActiveRecord::Base
  # allows us to do consultation.doctor = Doctor.first
  # instead of consultation.doctor_id = Doctor.first.id
  belongs_to :doctor

  # allows us to do consultation.patient = Patient.first
  # instead of consultation.patient_id = Patient.first.id
  belongs_to :patient
end
