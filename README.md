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

# Literature
* Alberti, G. 2019: movecost. An R package for calculating accumulated slope-dependent anisotropic cost-surfaces and least-cost paths. SoftwareX,
Volume 10, 2019.
  * https://www.sciencedirect.com/science/article/pii/S2352711019302341
* Mlekuz, D. 2013: Everything Flows: Computational Approaches To Fluid Landscapes. In: G. Earl, T. Sly, A. Chrysanthi, P. Murrieta-Flores, C. Papadopoulos, I. Romanowska, D. Wheatley (Hrsg.): CAA 2012 Archaeology in the Digital Era. Volume 2. Proceedings of the 40th Conference in Computer Applications and Quantitative Methods in Archaeology Southampton, United Kingdom. 26-30 March 2012. Amsterdam University Press, Amsterdam 2013, 839-845.
  * https://www.researchgate.net/publication/256486898_Everything_Flows_Computational_Approaches_To_Fluid_Landscapes
