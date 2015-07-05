class Customers
  include HTTParty

  def initialize(auth, base_url)
    @auth = auth
    @base_url = base_url
  end

  def upsert(customer_id, data = {})
    options = {body: data, basic_auth: @auth}
    self.class.put("#{@base_url}/customers/#{customer_id}", options)
  end
end
