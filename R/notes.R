library(devtools)
library(usethis)
library(gitcreds)


usethis::use_git_config(user.name = 'kwu16',
                        user.email = 'kevin.wu4@hilton.com')
gitcreds::gitcreds_set()
usethis::use_github()


usethis::use_r("matches")
devtools::load_all()
