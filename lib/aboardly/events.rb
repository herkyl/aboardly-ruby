class Customers
  include HTTParty

  def initialize(auth, base_url)
    @auth = auth
    @base_url = base_url
  end

  def create(customer_id, event_name)
    options = {basic_auth: @auth}
    self.class.post("#{@base_url}/customers/#{customer_id}/events/#{event_name}", options)
  end
end
