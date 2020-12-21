library(readr)
ALL_VISITS <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/ALL_VISITS.csv")
ASSIGN_ALL_VISIT_IDS <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/ASSIGN_ALL_VISIT_IDS.csv")
ATTRIBUTE_DEFINITION <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/ATTRIBUTE_DEFINITION.csv")
CARE_SITE <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/CARE_SITE.csv")
CDM_SOURCE <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/CDM_SOURCE.csv")
COHORT_DEFINITION <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/COHORT_DEFINITION.csv")
CONDITION_ERA <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/CONDITION_ERA.csv")
CONDITION_OCCURRENCE <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/CONDITION_OCCURRENCE.csv")
COST <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/COST.csv")
DEVICE_EXPOSURE <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/DEVICE_EXPOSURE.csv")
DOSE_ERA <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/DOSE_ERA.csv")
DRUG_ERA <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/DRUG_ERA.csv")
DRUG_EXPOSURE <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/DRUG_EXPOSURE.csv")
FACT_RELATIONSHIP <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/FACT_RELATIONSHIP.csv")
FINAL_VISIT_IDS <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/FINAL_VISIT_IDS.csv")
LOCATION_HISTORY <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/LOCATION_HISTORY.csv")
LOCATION <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/LOCATION.csv")
MEASUREMENT <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/MEASUREMENT.csv")
METADATA <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/METADATA.csv")
NOTE_NLP <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/NOTE_NLP.csv")
NOTE <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/NOTE.csv")
OBSERVATION_PERIOD <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/OBSERVATION_PERIOD.csv")
OBSERVATION <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/OBSERVATION.csv")
PAYER_PLAN_PERIOD <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/PAYER_PLAN_PERIOD.csv")
PERSON <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/PERSON.csv")
PROCEDURE_OCCURRENCE <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/PROCEDURE_OCCURRENCE.csv")
PROVIDER <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/PROVIDER.csv")
SPECIMEN <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/SPECIMEN.csv")
SURVEY_CONDUCT <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/SURVEY_CONDUCT.csv")
VISIT_DETAIL <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/VISIT_DETAIL.csv")
VISIT_OCCURRENCE <- readr::read_csv("/Users/meerapatel/GitHub/packages/polyesterData//data-raw/VISIT_OCCURRENCE.csv")

usethis::use_data(
	ALL_VISITS,
	ASSIGN_ALL_VISIT_IDS,
	ATTRIBUTE_DEFINITION,
	CARE_SITE,
	CDM_SOURCE,
	COHORT_DEFINITION,
	CONDITION_ERA,
	CONDITION_OCCURRENCE,
	COST,
	DEVICE_EXPOSURE,
	DOSE_ERA,
	DRUG_ERA,
	DRUG_EXPOSURE,
	FACT_RELATIONSHIP,
	FINAL_VISIT_IDS,
	LOCATION_HISTORY,
	LOCATION,
	MEASUREMENT,
	METADATA,
	NOTE_NLP,
	NOTE,
	OBSERVATION_PERIOD,
	OBSERVATION,
	PAYER_PLAN_PERIOD,
	PERSON,
	PROCEDURE_OCCURRENCE,
	PROVIDER,
	SPECIMEN,
	SURVEY_CONDUCT,
	VISIT_DETAIL,
	VISIT_OCCURRENCE,
overwrite = TRUE
)
