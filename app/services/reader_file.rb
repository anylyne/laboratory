# frozen_string_literal: true

require 'csv'

class ReaderFile
  def initialize(file_path)
    @file_path = file_path
  end

  def as_hash
    episodes = {}
    if @file_path
      converter = ->(header) { header.underscore.strip.gsub(' ', '_') }
      content = CSV.parse(File.read(@file_path), headers: true, header_converters: converter)
      content.by_row.each do |row|
        id = [row['patient_id'].strip, row['date'].strip]
        episodes[id] = {} unless episodes.key?(id)
        episodes[id][row['attribute_name'].underscore.strip.gsub(' ', '_').to_sym] =
          row['attribute_value'].strip.to_s
      end
    end
    episodes
  end
end
