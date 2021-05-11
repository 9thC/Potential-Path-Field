# Potential-Path-Field
This code is an attempt to recreate the method called "Potential Path Fields"/"topogryphy of connectivity" by Dimitrij Mlekuz which is described in his paper "Everything Flows: Computational Approaches To Fluid Landscapes" (2013).
The goal is to model the connectivity of (human) movement inherent to a landscape and to rillustrate it in a map.
The map is created by calculating a potential path field with a time budget of 15, 30 and 60 minutes for every point on the map and then cumulate them into one Potential Path Field.
No actual traffic flows are calculated.

# License
This code uses the fopllowing packages under GPL-2 and/or GPL-3
* sp: Classes and Methods for Spatial Data (GPL-2 | GPL-3 [expanded from: GPL (≥ 2)])
  * https://CRAN.R-project.org/package=sp
* raster: Geographic Data Analysis and Modeling (GPL (≥ 3))
  * https://CRAN.R-project.org/package=raster
* movecost: Calculation of Accumulated Cost Surface, Least-Cost Paths, and Least-Cost Corridors Related to Human Movement Across the Landscape ( GPL-2 | GPL-3 [expanded from: GPL (≥ 2)])
  * https://CRAN.R-project.org/package=movecost
