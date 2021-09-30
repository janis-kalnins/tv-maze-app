class TvMazeShowFetcher
  BASE_URL = 'https://api.tvmaze.com'

  def self.list
    HTTParty.get("#{BASE_URL}/shows")
  end

  def self.find_by_id(id)
    HTTParty.get("#{BASE_URL}/shows/#{id}")
  end

  def self.episodes_by_show_id(id)
    HTTParty.get("#{BASE_URL}/shows/#{id}/episodes")
  end

  def self.episodes_by_season_id(id)
    HTTParty.get("#{BASE_URL}/seasons/#{id}/episodes")
  end

  def self.find_show_by_name(name)
    HTTParty.get("#{BASE_URL}/search/shows?q=#{name}")
  end
end
