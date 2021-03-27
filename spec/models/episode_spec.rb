# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Episode, type: :model do
  before :each do
    Importer.new("#{Rails.root}/spec/fixtures/files/input.csv").run
  end

  it '#female_avg_age' do
    expect(Episode.female_avg_age).to eq(24.33333333333333)
  end
  it '#male_avg_age' do
    expect(Episode.male_avg_age).to eq(24)
  end
end
