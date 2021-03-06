#function for creating appropriate dir structure once you have created the project

#' Generate apropriate directory structure inside of project folder. Which folders will be generated is govern by parameters: "package" and "analysis".
#'
#'
#' @param "package" or "analysis".
#' @return The apropriate directory structure eather \code{"package"} or \code{"analysis"}.
#' @seealso (\code{\link{undir}})
#' @examples
#' library(pokusr)
#' startdir("package")
startdir <- function (type=c("package", "analysis")) {
  if (type=="package") {
    package <- c("src","tests", "vignettes","inst", "inst/templates", "man")
    sapply (package, dir.create)
  } else if (type== "analysis") {
    analysis <- c("articl","data", "exports","R")
    sapply (analysis, dir.create)
  } else {
    print ("ERROR")
  }

}

