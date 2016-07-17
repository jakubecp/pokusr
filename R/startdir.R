#function for creating appropriate dir structure once you have created the project

startdir <- function (type=c("package", "analysis")) {
  if (type=="package") {
    dir.create ("src")
    dir.create ("tests")
    dir.create ("vignettes")
    dir.create ("inst")
    dir.create ("inst/templates")
    dir.create ("R")
    dir.create ("man")
  } else if (type== "analysis") {
    dir.create ("articl")
    dir.create ("data")
    dir.create ("exports")
    dir.create ("R")
  } else {
    print ("ERROR")
  }

}

