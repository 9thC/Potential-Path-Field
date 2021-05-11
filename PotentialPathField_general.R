library(sp)
library(raster)
library(movecost)

# read dgm and save as object "dgm01", crs definition is not needed 
# Example: dgm01 <- raster("C:/Users/user/Documents/dgm01.tif")
dgm01 <- raster("PATH_TO_FILE")

# aggregate dgm
dgmAg10 <- aggregate(dgm01, fact=50)

# methode = funct from movecost package
wege <- function(data, methode="funct"){
  # data = geo data
  # origins = start points (3)
  origins = 1:length(data)
  # How many points overall?
  # rows:
  nr <- nrow(data)
  # columns:
  nc <- ncol(data)
  
  # dummies for time
  time15 <- matrix(data = 0, nrow = nr, ncol = nc)
  time30 <- matrix(data = 0, nrow = nr, ncol = nc)
  time60 <- matrix(data = 0, nrow = nr, ncol = nc)
  
  # Creating the target array for m <= 15, 30 , 60 minutes
  target15 <- matrix(data = 0, nrow = nr, ncol = nc)
  target30 <- matrix(data = 0, nrow = nr, ncol = nc)
  target60 <- matrix(data = 0, nrow = nr, ncol = nc)
  
  #### LOOP starts here   
  for (i in 1:length(origins)) {
    b <- raster::xyFromCell(data, origins[i])
    foo <- movecost(
      dtm = data,
      origin = b,
      funct = methode,
      time = "m", 
      move = 8, 
      oneplot = FALSE)
    # read cost matrix
    costs <- foo$accumulated.cost.raster@data@values
    # selecting all points
    # less than or equal to 15
    costs15 <- matrix(0, nrow = nr, ncol = nc)
    costs15[costs<=15] <- 1
    target15 <- target15 + costs15
    
    # less than or equal to 30
    costs30 <- matrix(0, nrow = nr, ncol = nc)
    costs30[costs<=30] <- 1
    target30 <- target30 + costs30
    
    # less than or equal to 60
    costs60 <- matrix(0, nrow = nr, ncol = nc)
    costs60[costs<=60] <- 1
    target60 <- target60 + costs60
  }
  
  # Foo as clipboard for movecost data
  
  
  # creating return object
  outp <- list("in_15_min" = target15,
               "in_30_min" = target30,
               "in_60_min" = target60)
  return(outp)
}

funct_results <- wege(data = dgmAg10)

# graphical presentation using the example of methode = tofp

# copy of field data:
# dgmAg10@data@values is being overwritten!
tofp_t15 <- dgmAg10
tofp_t30 <- dgmAg10
tofp_t60 <- dgmAg10
tofp_t15@data@values <- tofp_ergebnisse$in_15_min
tofp_t30@data@values <- tofp_ergebnisse$in_30_min
tofp_t60@data@values <- tofp_ergebnisse$in_60_min

plot(tofp_t15)
plot(tofp_t30)
plot(tofp_t60)