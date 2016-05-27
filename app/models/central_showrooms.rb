class CentralShowrooms

  def initialize(url)
    @url = url
  end

  def updated_after(date)
    make_request("#{@url}/#{date.to_i}")
  end

  def all
    make_request("#{@url}/0")
  end

  private
    def make_request(url)
      map_brand(HTTParty.get(url).parsed_response)
    end

    def map_brand(response)
      response.each do |showroom|
        showroom['make'] = showroom['brand']
        showroom.delete('brand')
      end
    end
end
