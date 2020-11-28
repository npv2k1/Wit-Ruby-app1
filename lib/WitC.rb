require 'httparty'
require 'uri'
require "json"
class WITC


  def create_keyword(keyword,synonyms)


    puts "KeyWord" + keyword
    url = "https://api.wit.ai/entities/address/keywords?v=20200513"
    begin
      uri = URI.parse(url)
    rescue URI::InvalidURIError
      uri = URI.parse(URI.escape(url))
    end
    #response = HTTParty.get(uri, headers: { 'Authorization' => 'Bearer 7QK64GWIUA5RW5OT6YKQLJKAFSCCNOER' }

    a={"keyword": keyword,
       "synonyms": [synonyms]}.to_json
    response=HTTParty.post(uri,body: a,headers: { 'Authorization' => 'Bearer DGNYYT25FGVUN3OCCNRP52733RPI5W5A',"Content-Type" => "application/json" })
    puts response.body

  end


end