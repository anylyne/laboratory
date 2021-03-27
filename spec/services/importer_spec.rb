# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Importer, type: :model do
  let(:importer) { Importer.new("#{Rails.root}/spec/fixtures/files/input.csv") }
  before :each do
    importer.run
  end
  it 'shoud read the file and return as hash with the episodes' do
    expect(Episode.count).to eq(4)
  end
end
