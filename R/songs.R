#Songselector



#' Select a powerballad, randomly
#'
#' Use this function to randomly select a power ballad
#' from the list.
#'
#' @return a character vector of length 1 containing a song and artist
#' @export
#' @examples
#' select_powerballad()
select_powerballad <- function(){
    # read in latest songs
    # select a random song from ballads
    possible_values <- seq_len(nrow(powrballad::ballads))
    sample(possible_values, size = 1)
    # return a random sample
    powrballad::ballads[sample(possible_values,size = 1),]
}



# a hidden function that reads in the txt file and creates a
# new version of powerballads.rda
# ballads <- read.delim("inst/extdata/powerballads.txt", header = FALSE, skip = 1,stringsAsFactors = FALSE )
# devtools::use_data(ballads,internal = FALSE,overwrite = TRUE)


#' @export
runExample <- function() {
    appDir <- system.file("shiny-app", "powrballad", package = "powrballad")
    if (appDir == "") {
        stop("Could not find example directory. Try re-installing `mypackage`.", call. = FALSE)
    }

    shiny::runApp(appDir, display.mode = "normal")
}
