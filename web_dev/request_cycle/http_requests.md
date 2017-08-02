# What are some common HTTP status codes?

#### General status code info:
* 4XX means client-side error
* 5XX means server-side error
* 1XX, 2XX, and 3XX don't result in an HTML error page
  * 1XX == informational purposes
  * 2XX == indicates success
  * 3XX == redirection
#### Common status codes
1. 200 -- HTTP request has succeeded
2. 404 -- Requested resource was not found
3. 403 -- Forbidden! Client's machine could be missing a certificate
4. 500 -- Unspecific server error
5. 503 -- Web server isn't available
6. 504 -- Gateway timout. (Server temporarily down/busy)


# What is the difference between a GET request and a POST request? When might each be used?

With GET, the parameters are in a URL, and with POST, the parameters are in the body.

GET is used for fetching documents, while POST is used for updating data.
GET parameters are affected by the maximum URL length, while POST doesn't run into this limitation.
GET parameters can be cached, while POST parameters are typically not.
GET parameters will not change the server, while POST parameters can update the server.
* GET == Simple request to fetch a document, parameters describe what to fetch.
* POST == Make updates to a server


# What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

The *best* cookie:
*(Truly, these damn things are one of the things I'll miss most about Fort Collins...)*

![Mary's Mountain Cookies Cookie](https://cdn.shopify.com/s/files/1/0634/0905/products/FullSizeRender-1_large.jpg?v=1423539313)

The other cookie:

It's a chunk of data from a website that's stored locally by a client's browser. It makes it possible for certain browser activites to be "remembered." For example, what you've added to your cart, or maybe a preference that you've sent for displaying a certain webpage.

You can use a Set-Cookie header to store a cookie. If no expiration date is set, the cookie will expire after the browser is closed. The Cookie header is included in an HTTP request that has a cookie whose path matches that of the request.



a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing
