class GermanUniversity < ActiveRecord::Base
  attr_reader :id, :name, :uni_name, :city, :degree_type, :semester, :language

    def initialize(attributes)
      @course_name             = attributes[:name]
      @uni_name         = attributes[:hsname]
      @city             = attributes[:hsStandort]
      @degree_type      = attributes[:abschlussart]
      @semester         = attributes[:zulassungssemester]
      @language         = attributes[:hauptsprache]
    end

    def self.find_universities
      UniversityService.find_universities.map do |uni|
        univ = University.new(name: "#{uni[:name]} at #{uni[:hsname]}", city: uni[:hsStandort], country_id: Country.find_by(name: "Germany"), language: uni[:hauptsprache], visa: "required for stays longer than 3 months")
        univ.save
      end
    end
  end