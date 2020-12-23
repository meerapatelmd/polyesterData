
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

Loading the Drug Exposure Table as an example:

``` r
library(polyesterData)  
```

``` r
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

## Statistics

    #> # A tibble: 162 x 7
    #>     Table Variable        COUNT DISTINCT_COUNT NA_COUNT NA_STR_COUNT BLANK_COUNT
    #>     <chr> <chr>           <int>          <int>    <int>        <int>       <int>
    #>   1 1     encounter_id   284857         284857        0            0           0
    #>   2 1     encounterclass 284857              5        0            0           0
    #>   3 1     patient        284857           6039        0            0           0
    #>   4 1     visit_end_date 284857          25547        0            0           0
    #>   5 1     visit_occurre… 284857         284857        0            0           0
    #>   6 1     visit_start_d… 284857          25506        0            0           0
    #>   7 2     date_service   327867          25514        0            0           0
    #>   8 2     date_service_… 327867          25555        0            0           0
    #>   9 2     encounter_id   327867         288129        0            0           0
    #>  10 2     encounterclass 327867              6        0            0           0
    #>  11 2     person_source… 327867           6039        0            0           0
    #>  12 2     visit_end_date 327867          25547        0            0           0
    #>  13 2     visit_occurre… 327867         284857        0            0           0
    #>  14 2     visit_occurre… 327867         284858     5501            0           0
    #>  15 2     visit_start_d… 327867          25506        0            0           0
    #>  16 2     visit_type     327867              5        0            0           0
    #>  17 5     cdm_etl_refer…      1              1        0            0           0
    #>  18 5     cdm_holder          1              1        0            0           0
    #>  19 5     cdm_release_d…      1              1        0            0           0
    #>  20 5     cdm_source_ab…      1              1        0            0           0
    #>  21 5     cdm_source_na…      1              1        0            0           0
    #>  22 5     cdm_version         1              1        0            0           0
    #>  23 5     source_descri…      1              1        0            0           0
    #>  24 5     source_docume…      1              1        0            0           0
    #>  25 5     source_releas…      1              1        0            0           0
    #>  26 5     vocabulary_ve…      1              1        0            0           0
    #>  27 7     condition_con…  69855            193        0            0           0
    #>  28 7     condition_era…  69855          13428        0            0           0
    #>  29 7     condition_era…  69855          69855        0            0           0
    #>  30 7     condition_era…  69855          13577        0            0           0
    #>  31 7     condition_occ…  69855              2        0            0           0
    #>  32 7     person_id       69855           6007        0            0           0
    #>  33 8     condition_con…  69866            193        0            0           0
    #>  34 8     condition_end…  69866           6412    22579            0           0
    #>  35 8     condition_end…  69866           6412    22579            0           0
    #>  36 8     condition_occ…  69866          69866        0            0           0
    #>  37 8     condition_sou…  69866            194        0            0           0
    #>  38 8     condition_sou…  69866            194        0            0           0
    #>  39 8     condition_sta…  69866          13579        0            0           0
    #>  40 8     condition_sta…  69866          13579        0            0           0
    #>  41 8     condition_sta…  69866              1        0            0           0
    #>  42 8     condition_sta…  69866              1    69866            0           0
    #>  43 8     condition_typ…  69866              1        0            0           0
    #>  44 8     person_id       69866           6007        0            0           0
    #>  45 8     provider_id     69866              1    69866            0           0
    #>  46 8     stop_reason     69866              1    69866            0           0
    #>  47 8     visit_detail_…  69866              1        0            0           0
    #>  48 8     visit_occurre…  69866          43217       45            0           0
    #>  49 11    domain_concep…     48             48        0            0           0
    #>  50 11    domain_id          48             48        0            0           0
    #>  51 11    domain_name        48             48        0            0           0
    #>  52 13    drug_concept_…  46411            150        0            0           0
    #>  53 13    drug_era_end_…  46411           9031        0            0           0
    #>  54 13    drug_era_id     46411          46411        0            0           0
    #>  55 13    drug_era_star…  46411          11425        0            0           0
    #>  56 13    drug_exposure…  46411            260        0            0           0
    #>  57 13    gap_days        46411           9029        0            0           0
    #>  58 13    person_id       46411           5772        0            0           0
    #>  59 14    days_supply    382708            617        0            0           0
    #>  60 14    dose_unit_sou… 382708              1   382708            0           0
    #>  61 14    drug_concept_… 382708            207        0            0           0
    #>  62 14    drug_exposure… 382708          23725        0            0           0
    #>  63 14    drug_exposure… 382708          23725        0            0           0
    #>  64 14    drug_exposure… 382708         382708        0            0           0
    #>  65 14    drug_exposure… 382708          24079        0            0           0
    #>  66 14    drug_exposure… 382708          24079        0            0           0
    #>  67 14    drug_source_c… 382708            207        0            0           0
    #>  68 14    drug_source_v… 382708            208        0            0           0
    #>  69 14    drug_type_con… 382708              2        0            0           0
    #>  70 14    lot_number     382708              1        0            0           0
    #>  71 14    person_id      382708           6038        0            0           0
    #>  72 14    provider_id    382708              1   382708            0           0
    #>  73 14    quantity       382708              1        0            0           0
    #>  74 14    refills        382708              1        0            0           0
    #>  75 14    route_concept… 382708              1        0            0           0
    #>  76 14    route_source_… 382708              1   382708            0           0
    #>  77 14    sig            382708              1   382708            0           0
    #>  78 14    stop_reason    382708              1   382708            0           0
    #>  79 14    verbatim_end_… 382708          23529    16027            0           0
    #>  80 14    visit_detail_… 382708              1        0            0           0
    #>  81 14    visit_occurre… 382708         176260     2611            0           0
    #>  82 16    encounter_id   288129         288129        0            0           0
    #>  83 16    visit_occurre… 288129         278134     1104            0           0
    #>  84 19    measurement_c…  35476             27        0            0           0
    #>  85 19    measurement_d…  35476           5317        0            0           0
    #>  86 19    measurement_d…  35476           5317        0            0           0
    #>  87 19    measurement_id  35476          35476        0            0           0
    #>  88 19    measurement_s…  35476             27        0            0           0
    #>  89 19    measurement_s…  35476             27        0            0           0
    #>  90 19    measurement_t…  35476           5317        0            0           0
    #>  91 19    measurement_t…  35476              1        0            0           0
    #>  92 19    operator_conc…  35476              1        0            0           0
    #>  93 19    person_id       35476           3355        0            0           0
    #>  94 19    provider_id     35476              1    35476            0           0
    #>  95 19    range_high      35476              1    35476            0           0
    #>  96 19    range_low       35476              1    35476            0           0
    #>  97 19    unit_concept_…  35476              1        0            0           0
    #>  98 19    unit_source_v…  35476              1    35476            0           0
    #>  99 19    value_as_conc…  35476              1        0            0           0
    #> 100 19    value_as_numb…  35476              1    35476            0           0
    #> 101 19    value_source_…  35476              1    35476            0           0
    #> 102 19    visit_detail_…  35476              1        0            0           0
    #> 103 19    visit_occurre…  35476          12693        0            0           0
    #> 104 23    obs_event_fie…  80635              1        0            0           0
    #> 105 23    observation_c…  80635             30        0            0           0
    #> 106 23    observation_d…  80635          14882        0            0           0
    #> 107 23    observation_d…  80635          14882        0            0           0
    #> 108 23    observation_e…  80635              1    80635            0           0
    #> 109 23    observation_id  80635          80635        0            0           0
    #> 110 23    observation_s…  80635            223        0            0           0
    #> 111 23    observation_s…  80635            223        0            0           0
    #> 112 23    observation_t…  80635              2        0            0           0
    #> 113 23    person_id       80635           6010        0            0           0
    #> 114 23    provider_id     80635              1    80635            0           0
    #> 115 23    qualifier_con…  80635              1        0            0           0
    #> 116 23    qualifier_sou…  80635              1    80635            0           0
    #> 117 23    unit_concept_…  80635              1        0            0           0
    #> 118 23    unit_source_v…  80635              1    80635            0           0
    #> 119 23    value_as_conc…  80635              1        0            0           0
    #> 120 23    value_as_date…  80635              1    80635            0           0
    #> 121 23    value_as_numb…  80635              1    80635            0           0
    #> 122 23    value_as_stri…  80635              1    80635            0           0
    #> 123 23    visit_detail_…  80635              1        0            0           0
    #> 124 23    visit_occurre…  80635          46745       47            0           0
    #> 125 24    observation_p…   6039           1207        0            0           0
    #> 126 24    observation_p…   6039           6039        0            0           0
    #> 127 24    observation_p…   6039           4843        0            0           0
    #> 128 24    period_type_c…   6039              1        0            0           0
    #> 129 24    person_id        6039           6039        0            0           0
    #> 130 26    birth_datetime   6039           4644        0            0           0
    #> 131 26    care_site_id     6039              1     6039            0           0
    #> 132 26    day_of_birth     6039             31        0            0           0
    #> 133 26    death_datetime   6039            907     5000            0           0
    #> 134 26    ethnicity_con…   6039              1        0            0           0
    #> 135 26    ethnicity_sou…   6039              1        0            0           0
    #> 136 26    ethnicity_sou…   6039              2        0            0           0
    #> 137 26    gender_concep…   6039              2        0            0           0
    #> 138 26    gender_source…   6039              1        0            0           0
    #> 139 26    gender_source…   6039              2        0            0           0
    #> 140 26    location_id      6039              1     6039            0           0
    #> 141 26    month_of_birth   6039             12        0            0           0
    #> 142 26    person_id        6039           6039        0            0           0
    #> 143 26    person_source…   6039           6039        0            0           0
    #> 144 26    provider_id      6039              1     6039            0           0
    #> 145 26    race_concept_…   6039              4        0            0           0
    #> 146 26    race_source_c…   6039              1        0            0           0
    #> 147 26    race_source_v…   6039              5        0            0           0
    #> 148 26    year_of_birth    6039            111        0            0           0
    #> 149 27    modifier_conc… 163597              1        0            0           0
    #> 150 27    modifier_sour… 163597              1   163597            0           0
    #> 151 27    person_id      163597           6009        0            0           0
    #> 152 27    procedure_con… 163597            132        0            0           0
    #> 153 27    procedure_date 163597          13517        0            0           0
    #> 154 27    procedure_dat… 163597          13517        0            0           0
    #> 155 27    procedure_occ… 163597         163597        0            0           0
    #> 156 27    procedure_sou… 163597            132        0            0           0
    #> 157 27    procedure_sou… 163597            132        0            0           0
    #> 158 27    procedure_typ… 163597              1        0            0           0
    #> 159 27    provider_id    163597              1   163597            0           0
    #> 160 27    quantity       163597              1   163597            0           0
    #> 161 27    visit_detail_… 163597              1        0            0           0
    #> 162 27    visit_occurre… 163597          97214     1767            0           0
