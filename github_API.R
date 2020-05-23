library(httr)

oauth_endpoints("github")

myapp <- oauth_app("Coursera R API usage homework script",
                   key = "878ca0013a8c06406965",
                   secret = "806eac67ee5af01591e4cb1234c9751a7c23a26c"
)

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
obj <- content(req)
