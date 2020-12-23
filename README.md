
<!-- README.md is generated from README.Rmd. Please edit that file -->

# polyesterData

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/polyesterData)](https://CRAN.R-project.org/package=polyesterData)
<!-- badges: end -->

polyesterData is a package that loads a simulated OMOP CDM dataset of
approximately 6039 patients originally sourced from Synthetic Health’s
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

    #> # A tibble: 162 x 4
    #>     Table                Variable                        COUNT DISTINCT_COUNT
    #>     <chr>                <chr>                           <int>          <int>
    #>   1 ALL_VISITS           encounter_id                   284857         284857
    #>   2 ALL_VISITS           encounterclass                 284857              5
    #>   3 ALL_VISITS           patient                        284857           6039
    #>   4 ALL_VISITS           visit_end_date                 284857          25547
    #>   5 ALL_VISITS           visit_occurrence_id            284857         284857
    #>   6 ALL_VISITS           visit_start_date               284857          25506
    #>   7 ASSIGN_ALL_VISIT_IDS date_service                   327867          25514
    #>   8 ASSIGN_ALL_VISIT_IDS date_service_end               327867          25555
    #>   9 ASSIGN_ALL_VISIT_IDS encounter_id                   327867         288129
    #>  10 ASSIGN_ALL_VISIT_IDS encounterclass                 327867              6
    #>  11 ASSIGN_ALL_VISIT_IDS person_source_value            327867           6039
    #>  12 ASSIGN_ALL_VISIT_IDS visit_end_date                 327867          25547
    #>  13 ASSIGN_ALL_VISIT_IDS visit_occurrence_id            327867         284857
    #>  14 ASSIGN_ALL_VISIT_IDS visit_occurrence_id_new        327867         284858
    #>  15 ASSIGN_ALL_VISIT_IDS visit_start_date               327867          25506
    #>  16 ASSIGN_ALL_VISIT_IDS visit_type                     327867              5
    #>  17 CDM_SOURCE           cdm_etl_reference                   1              1
    #>  18 CDM_SOURCE           cdm_holder                          1              1
    #>  19 CDM_SOURCE           cdm_release_date                    1              1
    #>  20 CDM_SOURCE           cdm_source_abbreviation             1              1
    #>  21 CDM_SOURCE           cdm_source_name                     1              1
    #>  22 CDM_SOURCE           cdm_version                         1              1
    #>  23 CDM_SOURCE           source_description                  1              1
    #>  24 CDM_SOURCE           source_documentation_reference      1              1
    #>  25 CDM_SOURCE           source_release_date                 1              1
    #>  26 CDM_SOURCE           vocabulary_version                  1              1
    #>  27 CONDITION_ERA        condition_concept_id            69855            193
    #>  28 CONDITION_ERA        condition_era_end_datetime      69855          13428
    #>  29 CONDITION_ERA        condition_era_id                69855          69855
    #>  30 CONDITION_ERA        condition_era_start_datetime    69855          13577
    #>  31 CONDITION_ERA        condition_occurrence_count      69855              2
    #>  32 CONDITION_ERA        person_id                       69855           6007
    #>  33 CONDITION_OCCURRENCE condition_concept_id            69866            193
    #>  34 CONDITION_OCCURRENCE condition_end_date              69866           6412
    #>  35 CONDITION_OCCURRENCE condition_end_datetime          69866           6412
    #>  36 CONDITION_OCCURRENCE condition_occurrence_id         69866          69866
    #>  37 CONDITION_OCCURRENCE condition_source_concept_id     69866            194
    #>  38 CONDITION_OCCURRENCE condition_source_value          69866            194
    #>  39 CONDITION_OCCURRENCE condition_start_date            69866          13579
    #>  40 CONDITION_OCCURRENCE condition_start_datetime        69866          13579
    #>  41 CONDITION_OCCURRENCE condition_status_concept_id     69866              1
    #>  42 CONDITION_OCCURRENCE condition_status_source_value   69866              1
    #>  43 CONDITION_OCCURRENCE condition_type_concept_id       69866              1
    #>  44 CONDITION_OCCURRENCE person_id                       69866           6007
    #>  45 CONDITION_OCCURRENCE provider_id                     69866              1
    #>  46 CONDITION_OCCURRENCE stop_reason                     69866              1
    #>  47 CONDITION_OCCURRENCE visit_detail_id                 69866              1
    #>  48 CONDITION_OCCURRENCE visit_occurrence_id             69866          43217
    #>  49 DOMAIN               domain_concept_id                  48             48
    #>  50 DOMAIN               domain_id                          48             48
    #>  51 DOMAIN               domain_name                        48             48
    #>  52 DRUG_ERA             drug_concept_id                 46411            150
    #>  53 DRUG_ERA             drug_era_end_datetime           46411           9031
    #>  54 DRUG_ERA             drug_era_id                     46411          46411
    #>  55 DRUG_ERA             drug_era_start_datetime         46411          11425
    #>  56 DRUG_ERA             drug_exposure_count             46411            260
    #>  57 DRUG_ERA             gap_days                        46411           9029
    #>  58 DRUG_ERA             person_id                       46411           5772
    #>  59 DRUG_EXPOSURE        days_supply                    382708            617
    #>  60 DRUG_EXPOSURE        dose_unit_source_value         382708              1
    #>  61 DRUG_EXPOSURE        drug_concept_id                382708            207
    #>  62 DRUG_EXPOSURE        drug_exposure_end_date         382708          23725
    #>  63 DRUG_EXPOSURE        drug_exposure_end_datetime     382708          23725
    #>  64 DRUG_EXPOSURE        drug_exposure_id               382708         382708
    #>  65 DRUG_EXPOSURE        drug_exposure_start_date       382708          24079
    #>  66 DRUG_EXPOSURE        drug_exposure_start_datetime   382708          24079
    #>  67 DRUG_EXPOSURE        drug_source_concept_id         382708            207
    #>  68 DRUG_EXPOSURE        drug_source_value              382708            208
    #>  69 DRUG_EXPOSURE        drug_type_concept_id           382708              2
    #>  70 DRUG_EXPOSURE        lot_number                     382708              1
    #>  71 DRUG_EXPOSURE        person_id                      382708           6038
    #>  72 DRUG_EXPOSURE        provider_id                    382708              1
    #>  73 DRUG_EXPOSURE        quantity                       382708              1
    #>  74 DRUG_EXPOSURE        refills                        382708              1
    #>  75 DRUG_EXPOSURE        route_concept_id               382708              1
    #>  76 DRUG_EXPOSURE        route_source_value             382708              1
    #>  77 DRUG_EXPOSURE        sig                            382708              1
    #>  78 DRUG_EXPOSURE        stop_reason                    382708              1
    #>  79 DRUG_EXPOSURE        verbatim_end_date              382708          23529
    #>  80 DRUG_EXPOSURE        visit_detail_id                382708              1
    #>  81 DRUG_EXPOSURE        visit_occurrence_id            382708         176260
    #>  82 FINAL_VISIT_IDS      encounter_id                   288129         288129
    #>  83 FINAL_VISIT_IDS      visit_occurrence_id_new        288129         278134
    #>  84 MEASUREMENT          measurement_concept_id          35476             27
    #>  85 MEASUREMENT          measurement_date                35476           5317
    #>  86 MEASUREMENT          measurement_datetime            35476           5317
    #>  87 MEASUREMENT          measurement_id                  35476          35476
    #>  88 MEASUREMENT          measurement_source_concept_id   35476             27
    #>  89 MEASUREMENT          measurement_source_value        35476             27
    #>  90 MEASUREMENT          measurement_time                35476           5317
    #>  91 MEASUREMENT          measurement_type_concept_id     35476              1
    #>  92 MEASUREMENT          operator_concept_id             35476              1
    #>  93 MEASUREMENT          person_id                       35476           3355
    #>  94 MEASUREMENT          provider_id                     35476              1
    #>  95 MEASUREMENT          range_high                      35476              1
    #>  96 MEASUREMENT          range_low                       35476              1
    #>  97 MEASUREMENT          unit_concept_id                 35476              1
    #>  98 MEASUREMENT          unit_source_value               35476              1
    #>  99 MEASUREMENT          value_as_concept_id             35476              1
    #> 100 MEASUREMENT          value_as_number                 35476              1
    #> 101 MEASUREMENT          value_source_value              35476              1
    #> 102 MEASUREMENT          visit_detail_id                 35476              1
    #> 103 MEASUREMENT          visit_occurrence_id             35476          12693
    #> 104 OBSERVATION          obs_event_field_concept_id      80635              1
    #> 105 OBSERVATION          observation_concept_id          80635             30
    #> 106 OBSERVATION          observation_date                80635          14882
    #> 107 OBSERVATION          observation_datetime            80635          14882
    #> 108 OBSERVATION          observation_event_id            80635              1
    #> 109 OBSERVATION          observation_id                  80635          80635
    #> 110 OBSERVATION          observation_source_concept_id   80635            223
    #> 111 OBSERVATION          observation_source_value        80635            223
    #> 112 OBSERVATION          observation_type_concept_id     80635              2
    #> 113 OBSERVATION          person_id                       80635           6010
    #> 114 OBSERVATION          provider_id                     80635              1
    #> 115 OBSERVATION          qualifier_concept_id            80635              1
    #> 116 OBSERVATION          qualifier_source_value          80635              1
    #> 117 OBSERVATION          unit_concept_id                 80635              1
    #> 118 OBSERVATION          unit_source_value               80635              1
    #> 119 OBSERVATION          value_as_concept_id             80635              1
    #> 120 OBSERVATION          value_as_datetime               80635              1
    #> 121 OBSERVATION          value_as_number                 80635              1
    #> 122 OBSERVATION          value_as_string                 80635              1
    #> 123 OBSERVATION          visit_detail_id                 80635              1
    #> 124 OBSERVATION          visit_occurrence_id             80635          46745
    #> 125 OBSERVATION_PERIOD   observation_period_end_date      6039           1207
    #> 126 OBSERVATION_PERIOD   observation_period_id            6039           6039
    #> 127 OBSERVATION_PERIOD   observation_period_start_date    6039           4843
    #> 128 OBSERVATION_PERIOD   period_type_concept_id           6039              1
    #> 129 OBSERVATION_PERIOD   person_id                        6039           6039
    #> 130 PERSON               birth_datetime                   6039           4644
    #> 131 PERSON               care_site_id                     6039              1
    #> 132 PERSON               day_of_birth                     6039             31
    #> 133 PERSON               death_datetime                   6039            907
    #> 134 PERSON               ethnicity_concept_id             6039              1
    #> 135 PERSON               ethnicity_source_concept_id      6039              1
    #> 136 PERSON               ethnicity_source_value           6039              2
    #> 137 PERSON               gender_concept_id                6039              2
    #> 138 PERSON               gender_source_concept_id         6039              1
    #> 139 PERSON               gender_source_value              6039              2
    #> 140 PERSON               location_id                      6039              1
    #> 141 PERSON               month_of_birth                   6039             12
    #> 142 PERSON               person_id                        6039           6039
    #> 143 PERSON               person_source_value              6039           6039
    #> 144 PERSON               provider_id                      6039              1
    #> 145 PERSON               race_concept_id                  6039              4
    #> 146 PERSON               race_source_concept_id           6039              1
    #> 147 PERSON               race_source_value                6039              5
    #> 148 PERSON               year_of_birth                    6039            111
    #> 149 PROCEDURE_OCCURRENCE modifier_concept_id            163597              1
    #> 150 PROCEDURE_OCCURRENCE modifier_source_value          163597              1
    #> 151 PROCEDURE_OCCURRENCE person_id                      163597           6009
    #> 152 PROCEDURE_OCCURRENCE procedure_concept_id           163597            132
    #> 153 PROCEDURE_OCCURRENCE procedure_date                 163597          13517
    #> 154 PROCEDURE_OCCURRENCE procedure_datetime             163597          13517
    #> 155 PROCEDURE_OCCURRENCE procedure_occurrence_id        163597         163597
    #> 156 PROCEDURE_OCCURRENCE procedure_source_concept_id    163597            132
    #> 157 PROCEDURE_OCCURRENCE procedure_source_value         163597            132
    #> 158 PROCEDURE_OCCURRENCE procedure_type_concept_id      163597              1
    #> 159 PROCEDURE_OCCURRENCE provider_id                    163597              1
    #> 160 PROCEDURE_OCCURRENCE quantity                       163597              1
    #> 161 PROCEDURE_OCCURRENCE visit_detail_id                163597              1
    #> 162 PROCEDURE_OCCURRENCE visit_occurrence_id            163597          97214
