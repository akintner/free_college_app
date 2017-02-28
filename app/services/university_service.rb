class UniversityService
  def self.find_universities
    response = Faraday.get("https://www.daad.de/ajax/hsk/result/ad8xa39c3xy2ffpxbbbcq31eu19cxv56/en/")
    JSON.parse(response.body, symbolize_names: true)[:results].each do |uni|
      University.create(name: "#{uni[:name]} at #{uni[:hsname]}", city: uni[:hsStandort], country_id: Country.find_by(name: "Germany"), language: uni[:hauptsprache], visa: "required for stays longer than 3 months")
    end
  end
end