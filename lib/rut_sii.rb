module RutSii
 	require 'net/http'
 	require 'json'
	def self.query value
		uri = URI.parse("http://api-sii.apptec.cl/api/v1/companies")
		params = { :rut => value }
		uri.query = URI.encode_www_form(params)

		res = Net::HTTP.get_response(uri)
		return JSON.parse(res.body)
	end
end
