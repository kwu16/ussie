test_that("uss_make_matches works", {

  # use the function
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  expect_true(tibble::is_tibble(italy))
  expect_named(object = italy,
               expected = c('country', 'tier', 'season', 'date', 'home', 'visitor', 'goals_home', 'goals_visitor')
               )
  expect_identical(object = unique(italy$country),
                   expected = c('Italy'))

  # when you find a bug, add a test: 👋 from Ian
  expect_s3_class(italy$tier, "factor")

  expect_snapshot(dplyr::glimpse(italy))

})
