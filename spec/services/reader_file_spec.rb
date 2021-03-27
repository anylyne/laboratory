# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ReaderFile do
  let(:reader) { ReaderFile.new("#{Rails.root}/spec/fixtures/files/input.csv") }
  let(:expected_hash) do
    {
      %w[1
         2019-12-09] => { age: '23', blood_pressure: '160', diabetes: 'TRUE', gender: 'F', glucose: '11.1',
                          wcc: '120' },
      %w[1
         2019-12-11] => { age: '24', blood_pressure: '180', diabetes: 'TRUE', glucose: '12.2', wcc: '212' },
      %w[2
         2019-12-09] => { age: '24', blood_pressure: '190', diabetes: 'FALSE', gender: 'M', glucose: '5.5',
                          wcc: '312' },
      %w[3
         2019-12-14] => { age: '26', blood_pressure: '210', diabetes: 'TRUE', gender: 'F', glucose: '9.7',
                          wcc: '110' }
    }
  end
  it 'shoud read the file and return as hash with the episodes' do
    expect(reader.as_hash).to eq(expected_hash)
  end
end
