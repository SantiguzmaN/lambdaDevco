#qa
#|lambda-local -l index.js -h handler -e event_apigateway.js -t 9000 -E {\"CLIENT_ID\":\"nQlBn4zcVroe7Bd5Q9a3i0pIE7omaAdE\"\,\"CLIENT_SECRET\":\"cdzhWWSG0tGY0bAq\"\,\"BASE_URL_ENV\":\"qa.api.tigo.com\"\,\"PRODUCT_ID_AMAZON_VIDEO\":\"AmazonVideo\"}

#prod
lambda-local -l index.js -h handler -e event_apigateway.js -t 9000 -E {\"CLIENT_ID\":\"jm1Q526eeF8ExBo9WlYhGIwnxFjEGaG7\"\,\"CLIENT_SECRET\":\"GZZ15JCGQgqpsA5q\"\,\"BASE_URL_ENV\":\"prod.api.tigo.com\"\,\"PRODUCT_ID_AMAZON_VIDEO\":\"AmazonVideo\"}
