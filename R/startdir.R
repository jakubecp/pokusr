#function for creating appropriate dir structure once you have created the project

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

