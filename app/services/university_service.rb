class UniversityService
  def self.find_universities
    response = Faraday.get("https://www.daad.de/ajax/hsk/result/ad8xa39c3xy2ffpxbbbcq31eu19cxv56/en/")
    JSON.parse(response.body, symbolize_names: true)[:results]
  end
end