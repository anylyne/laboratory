# frozen_string_literal: true

class HomeController < ApplicationController
  def report
    @female_patients = Patient.females
    @male_patients = Patient.males
    @male_patients_age = Episode.female_avg_age
    @female_patients_age = Episode.male_avg_age
  end

  def new; end

  def import
    if params[:file].nil?
      flash.now[:notice] = 'Please, select a file to import the data.'
      render :new
    else
      Importer.new(params[:file]).run
      redirect_to action: :report
    end
  end
end
