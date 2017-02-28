class GermanUniversity
  attr_reader :id, :name, :uni_name, :city, :degree_type, :semester, :language

    def initialize(attributes)
      @name = attributes[:name]
      @uni_name         = attributes[:hsname]
      @city         = attributes[:hsStandort]
      @degree_type  = attributes[:abschlussart]
      @semester         = attributes[:zulassungssemester]
      @language        = attributes[:hauptsprache]
      @attrs = attributes
    end

    def full_name
      "#{@attrs[:name]} at #{@attrs[:hsname]}"
    end


    def self.find_universities
      UniversityService.find_universities.map do |uni|
        new(uni)
      end
    end
  end