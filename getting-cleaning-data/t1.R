library(httr)


# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. To make your own application, register at
#    https://github.com/settings/developers. Use any URL for the homepage URL
#    (http://github.com is fine) and  http://localhost:1410 as the callback url
#
#    Replace your key and secret below.
myapp <- oauth_app("github",
  key = "Iv1.ea1f526b2852fcd2",
  secret = "08a99c636e079ce42ead9766f1dda0ce423d7942"
)

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
print(github_token)
