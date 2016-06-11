require 'http'

class RetrieveGithubAccount
  def self.call(code)
    response = HTTP.headers(accept: 'application/json').get("#{ENV[API_HOST]}/github_account?code=#{code}")
    response.code == 200 ? response.parse : nil
  end
end