# app/services/wikipedia_api.rb
class WikipediaApi
    require 'wikipedia'
  
    def self.fetch_national_days
      page = Wikipedia.find('国の記念日')
      return [] unless page.content
  
      extract_national_days(page.content)
    end
  
    private
  
    def self.extract_national_days(content)
      lines = content.lines.select { |line| line.include?('建国記念日') }
      lines.map do |line|
        match_data = line.match(/(\d{1,2}月\d{1,2}日).*?（(.*?)）/)
        next unless match_data
  
        {
          date: match_data[1],
          country: match_data[2]
        }
      end.compact
    end
  end
  