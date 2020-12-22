
<!-- README.md is generated from README.Rmd. Please edit that file -->

# polyesterData

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/polyesterData)](https://CRAN.R-project.org/package=polyesterData)
<!-- badges: end -->

polyesterData is a package that loads a simulated OMOP CDM dataset of
approximately 6000 patients originally sourced from Synthetic Health’s
Synthea.

## Installation

You can install the latest version of polyesterData with:

``` r
devtools("meerapatelmd/polyesterData")
```

## Load Data

``` r
library(polyesterData)  
head(DRUG_EXPOSURE)
#>   drug_exposure_id person_id drug_concept_id drug_exposure_start_date
#> 1            20401       267        40213154               2002-06-15
#> 2            20402       267        40213227               2007-06-16
#> 3            20403       267        40213154               2005-07-02
#> 4            20404       267        40213154               2007-06-16
#> 5            20405       267         1539463               1991-04-22
#> 6            20406       267        19133905               2007-06-09
#>   drug_exposure_start_datetime drug_exposure_end_date
#> 1          2002-06-15 04:00:00             2002-06-15
#> 2          2007-06-16 04:00:00             2007-06-16
#> 3          2005-07-02 04:00:00             2005-07-02
#> 4          2007-06-16 04:00:00             2007-06-16
#> 5          1991-04-22 04:00:00             1992-04-21
#> 6          2007-06-09 04:00:00             2007-06-19
#>   drug_exposure_end_datetime verbatim_end_date drug_type_concept_id stop_reason
#> 1        2002-06-15 04:00:00        2002-06-15               581452          NA
#> 2        2007-06-16 04:00:00        2007-06-16               581452          NA
#> 3        2005-07-02 04:00:00        2005-07-02               581452          NA
#> 4        2007-06-16 04:00:00        2007-06-16               581452          NA
#> 5        1992-04-21 04:00:00        1992-04-21             38000177          NA
#> 6        2007-06-19 04:00:00        2007-06-19             38000177          NA
#>   refills quantity days_supply sig route_concept_id lot_number provider_id
#> 1       0        0           0  NA                0          0          NA
#> 2       0        0           0  NA                0          0          NA
#> 3       0        0           0  NA                0          0          NA
#> 4       0        0           0  NA                0          0          NA
#> 5       0        0         365  NA                0          0          NA
#> 6       0        0          10  NA                0          0          NA
#>   visit_occurrence_id visit_detail_id drug_source_value drug_source_concept_id
#> 1               13987               0               140               40213154
#> 2                  NA               0               113               40213227
#> 3               13947               0               140               40213154
#> 4                  NA               0               140               40213154
#> 5               13959               0            314231                1539463
#> 6               13964               0            834102               19133905
#>   route_source_value dose_unit_source_value
#> 1                 NA                     NA
#> 2                 NA                     NA
#> 3                 NA                     NA
#> 4                 NA                     NA
#> 5                 NA                     NA
#> 6                 NA                     NA
```
