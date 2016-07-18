undir <- function (type=c("package", "analysis")) {
  if (type == "package") {
    package <- c("src","tests", "vignettes","inst", "inst/templates", "R", "man")
    sapply (package, unlink, recursive=TRUE)
  } else if (type== "analysis") {
    analysis <- c("articl","data", "exports","Ra")
    sapply (analysis, unlink, recursive=TRUE)
  } else {
    print ("ERROR")
  }

}

