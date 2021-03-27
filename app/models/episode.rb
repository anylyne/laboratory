# frozen_string_literal: true

class Episode < ApplicationRecord
  belongs_to :patient

  scope :female_avg_age, -> { includes(:patient).where('patients.gender = ?', 'F').average(:age) }
  scope :male_avg_age, -> { includes(:patient).where('patients.gender = ?', 'M').average(:age) }
end
