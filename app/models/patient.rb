# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :episodes

  scope :females, -> { where(gender: 'F').count }
  scope :males, -> { where(gender: 'M').count }
end
