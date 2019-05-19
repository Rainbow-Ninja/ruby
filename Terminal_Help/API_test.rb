curl -X GET --header 'Accept: application/json' 'https://api.transport.nsw.gov.au/v1/tp/trip?outputFormat=rapidJSON&coordOutputFormat=EPSG%3A4326&depArrMacro=dep&itdDate=20161001&itdTime=1200&type_origin=any&name_origin=10101331&type_destination=any&name_destination=10102027&calcNumberOfTrips=6&TfNSWTR=true&version=10.2.1.42'
https://api.transport.nsw.gov.au/v1/tp/trip?outputFormat=rapidJSON&coordOutputFormat=EPSG%3A4326&depArrMacro=dep&itdDate=20161001&itdTime=1200&type_origin=any&name_origin=10101331&type_destination=any&name_destination=10102027&calcNumberOfTrips=6&TfNSWTR=true&version=10.2.1.42
{
    "ErrorDetails": {
      "TransactionId": "00000166e5649f43-1b648765",
      "ErrorDateTime": "2019-04-17T22:25:56.881-07:00",
      "Message": "The calling application is unauthenticated.",
      "RequestedUrl": "/v1/tp/trip",
      "RequestMethod": "GET"
    }
  }
  