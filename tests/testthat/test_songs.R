context('test if there is output')

test_that("something is produced", {
    set.seed(12)
    result <- select_powerballad()
    # should be "Paradise by the dashboard light - Meat Loaf", but who nows when songs are added
    expect_true(  is.character(result)     )
})


