class TvMazeShowFetcher
  BASE_URL = 'https://api.tvmaze.com'

  def self.list
    response = HTTParty.get("#{BASE_URL}/shows")
    byebug
  end

  def self.find_by_id(id)
    response = HTTParty.get("#{BASE_URL}/shows/#{id}")
  end

  def self.episodes_by_show_id(id)
    response = HTTParty.get("#{BASE_URL}/shows/#{id}"/episodes)
  end

  def self.episodes_by_season_id(id)
      response = HTTParty.get("#{BASE_URL}/seasons/#{id}"/episodes)
  end

  def self.find_show_by_name(name)
    response = HTTParty.get("#{BASE_URL}/search/shows?q=#{name}")
  end
end
