class Customers
  include HTTParty

  def initialize(auth, base_url)
    @auth = auth
    @base_url = base_url
  end

  def create(customer_id, event_name, *properties)
    if (properties.empty?)
      properties = [{}]
    end
    options = {basic_auth: @auth, body: properties[0].to_json, :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'}}
    self.class.post("#{@base_url}/customers/#{customer_id}/events/#{event_name}", options)
  end
end
