class KanyeClient
  def initialize
    @conn = Faraday.new(
      url: 'https://api.kanye.rest',
      headers: {'Content-Type' => 'application/json'}
    )
  end

  def get_quote
    response = @conn.get
    JSON.parse(response.body)['quote']
  end
end