class UniversitiesController < ApplicationController
  def index 
    @unis = GermanUniversity.find_universities
  end
end
