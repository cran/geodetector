## ----echo=FALSE---------------------------------------------------------------
knitr::opts_chunk$set(error = TRUE, warning=FALSE, message=FALSE, fig.path='figs/')
library("geodetector")
data(CollectData)

## ----table1 ,echo = FALSE-----------------------------------------------------
  knitr::kable(
  head(CollectData[, 1:4], 6), booktabs = TRUE,
  caption = 'Table 1. Demo data in table format'
)

## ----image2, echo = FALSE, out.width='100%', fig.cap="Figure 2. Demo data in GIS format (a) NTDs prevalence *Y*, (b) Elevation *X<sub>1</sub>*, (c) Soil types *X<sub>2</sub>*, (d) Watersheds *X<sub>3</sub>*"----
knitr::include_graphics("./figs/fig-2.jpg")

## ----eval=F-------------------------------------------------------------------
#  install.packages("geodetector")

## -----------------------------------------------------------------------------
library(geodetector)

## -----------------------------------------------------------------------------
data(CollectData)

## -----------------------------------------------------------------------------
class(CollectData)

## -----------------------------------------------------------------------------
names(CollectData)

## -----------------------------------------------------------------------------
factor_detector("incidence","elevation",CollectData) 

## -----------------------------------------------------------------------------
factor_detector(1,3, CollectData)

## ----eval=F-------------------------------------------------------------------
#  factor_detector ("incidence",c("soiltype","watershed","elevation"),CollectData)

## -----------------------------------------------------------------------------
factor_detector (1,c(2,3,4), CollectData)

## -----------------------------------------------------------------------------
interaction_detector("incidence",c("soiltype","watershed","elevation"),CollectData)

## -----------------------------------------------------------------------------
risk_detector("incidence","soiltype",CollectData)

## -----------------------------------------------------------------------------
risk_detector(1,2, CollectData)

## ----eval=F-------------------------------------------------------------------
#  risk_detector("incidence",c("soiltype","watershed","elevation"),CollectData)

## -----------------------------------------------------------------------------
risk_detector(1,c(2,3,4), CollectData)

## -----------------------------------------------------------------------------
ecological_detector("incidence",c("soiltype","watershed"),CollectData)

## -----------------------------------------------------------------------------
ecological_detector("incidence",c("soiltype","watershed","elevation"),CollectData)

