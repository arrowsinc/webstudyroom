require 'open-uri'
class DocomoApi

  APIKEY="634f2f413047424b32674e4161554472626e53766e5442475641552e306b717a4e745745677a4f41774341"

  def self.find_by_query(query)
    request_uri = "https://api.apigw.smt.docomo.ne.jp/knowledgeQA/v1/ask?APIKEY=#{APIKEY}&q=#{CGI.escape(query)}"
    JSON.parse open(request_uri).read
  end

end
