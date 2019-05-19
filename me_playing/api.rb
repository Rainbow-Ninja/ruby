
# curl -X GET --header 'Accept: application/json' --header 'Authorization: apikey 3SxjwdKG2bOros15Kqp9BBDyzY49lJUdYIIE' 'https://api.transport.nsw.gov.au/v1/tp/trip?outputFormat=rapidJSON&coordOutputFormat=EPSG%3A4326&depArrMacro=dep&itdDate=#{date_yyyymmdd}&itdTime=#{time}&type_origin=any&name_origin=#{start}&type_destination=any&name_destination=#{end}&calcNumberOfTrips=#{num_results}&excludedMeans=checkbox&exclMOT_4=1&exclMOT_5=1&exclMOT_7=1&exclMOT_9=1&exclMOT_11=1&TfNSWTR=true&version=10.2.1.42'

# puts "https://api.transport.nsw.gov.au/v1/tp/trip?outputFormat=rapidJSON&coordOutputFormat=EPSG%3A4326&depArrMacro=dep&itdDate=#{date_yyyymmdd}&itdTime=#{time}&type_origin=any&name_origin=#{start}&type_destination=any&name_destination=#{end_at}&calcNumberOfTrips=#{num_results}&excludedMeans=checkbox&exclMOT_4=1&exclMOT_5=1&exclMOT_7=1&exclMOT_9=1&exclMOT_11=1&TfNSWTR=true&version=10.2.1.42"

require 'opendata-api'
require 'json'
#require 'dotenv'
#API_KEY = ENV['3SxjwdKG2bOros15Kqp9BBDyzY49lJUdYIIE']
OpenDataAPI.init('3SxjwdKG2bOros15Kqp9BBDyzY49lJUdYIIE')
args = [
#   {
#   #  api_name: 'traffic_volume_counts',
#     format: 'geojson',
#     table: 'road_traffic_counts_station_reference',
#     limit: '50'
#   },
  {
    api_name: 'trip_planner',
    format: 'rapidJSON',
    coord_lat: '-33.8688',
    coord_long: '151.2093',
    coord_radius: '50'
  }
]
response = OpenDataAPI.run(args)
#puts JSON.pretty_generate(JSON.parse(response[:traffic_volume_counts]))
puts JSON.pretty_generate(JSON.parse(response[:trip_planner]))
