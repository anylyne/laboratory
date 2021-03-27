# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Patient, type: :model do
  before :each do
    Importer.new("#{Rails.root}/spec/fixtures/files/input.csv").run
  end

  it '#females' do
    expect(Patient.females).to eq(2)
  end
  it '#males' do
    expect(Patient.males).to eq(1)
  end
end
