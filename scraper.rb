require "mechanize"
require "nokogiri"
require "byebug"

url = ARGV[0]
universities = File.new("daadschools.txt", "w")

agent = Mechanize.new { |agent| agent.user_agent_alias = "Mac Safari" }

html = agent.get(url).body

html_doc = Nokogiri::HTML(html)

universities.write("Schools\n\n")
byebug
list = html_doc.xpath("//*[@id='course-list']/ul[1]/li[1]/div/h3/a/span") //*[@id="course-list"]/ul[1]/li[1]/div/h3/a
list.each { |i| universities.write(i.text + "\n") }

# universities.write("Cities\n\n")

# list = html_doc.xpath("//span[@class='city']")
# list.each { |i| fp.write(i.text + "\n") }