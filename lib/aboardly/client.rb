require_relative 'customers'
require_relative 'events'

BASE_URL = 'https://www.aboardly.com/api/v1'

class Aboardly
  def initialize(username, password, base_url = BASE_URL)
    auth = {username: username, password: password}
    @customers = Customers.new(auth, base_url)
    @events = Customers.new(auth, base_url)
  end

  def customers
    @customers
  end

  def events
    @events
  end
end
