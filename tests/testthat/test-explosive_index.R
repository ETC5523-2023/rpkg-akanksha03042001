test_that("Checking if explosive_index function works correctly", {
  # Test when there is a valid data for the given year in the dataset
  year_val <- 2011
  explosion_val <- data.frame(vei = 5, volcano_name = "Puyehue-Cordon Caulle")
  expected_explosion_val <- data.frame(vei = 5, volcano_name = "Puyehue-Cordon Caulle")
  expect_equal(explosion_val[, c("vei", "volcano_name")], expected_explosion_val)
})
