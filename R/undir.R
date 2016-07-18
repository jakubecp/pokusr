#function for deleting dir structure created by function startdir


undir <- function (type=c("package", "analysis")) {
  if (type == "package") {
    package <- c("src","tests", "vignettes","inst", "inst/templates", "man")
    sapply (package, unlink, recursive=TRUE)
  } else if (type== "analysis") {
    analysis <- c("articl","data", "exports","R")
    sapply (analysis, unlink, recursive=TRUE)
  } else {
    print ("ERROR")
  }

}

