require 'httparty'
require 'uri'
require "json"
class GFG


  def geeks


    puts "Hello Geeks!"
    url="https://api.wit.ai/entities/address/keywords?v=20200513"
    begin
      uri = URI.parse(url)
    rescue URI::InvalidURIError
      uri = URI.parse(URI.escape(url))
    end
    #response = HTTParty.get(uri, headers: { 'Authorization' => 'Bearer 7QK64GWIUA5RW5OT6YKQLJKAFSCCNOER' }

    a={"keyword": "Hung Yen",
       "synonyms": ["hy"]}.to_json
    response=HTTParty.post(uri,body: a,headers: { 'Authorization' => 'Bearer DGNYYT25FGVUN3OCCNRP52733RPI5W5A',"Content-Type" => "application/json" })
    puts response.body

  end


end