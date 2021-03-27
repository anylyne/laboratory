# frozen_string_literal: true

require 'csv'

class Importer
  def initialize(file_path)
    @file_path = file_path
  end

  def run
    ReaderFile.new(@file_path).as_hash.each { |episode| Episode.create(episode_params(episode)) }
  end

  private

  def episode_params(episode)
    {
      patient: Patient.find_or_create_by(patient_params(episode)),
      date: episode[0][1],
      age: episode[1][:age],
      blood_pressure: episode[1][:blood_pressure],
      glucose: episode[1][:glucose],
      diabetes: episode[1][:diabetes],
      wcc: episode[1][:wcc]
    }
  end

  def patient_params(episode)
    patient = { id: episode[0][0] }
    patient[:gender] = episode[1][:gender] if episode[1][:gender]
    patient
  end
end
