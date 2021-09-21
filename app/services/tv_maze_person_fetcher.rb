class TvMazePersonFetcher
  BASE_URL = 'https://api.tvmaze.com'

  def self.find_people(id)
    HTTParty.get("#{BASE_URL}/people/#{id}")
  end

  def self.people_with_cast_credits(id)
    HTTParty.get("#{BASE_URL}/people/#{id}?embed=castcredits")
  end

  def self.people_list(page_number)
    HTTParty.get("#{BASE_URL}/people?page=#{page_number}")
  end

  def self.find_person_by_name(name)
    HTTParty.get("#{BASE_URL}/search/people?q=#{name}")
  end
end
