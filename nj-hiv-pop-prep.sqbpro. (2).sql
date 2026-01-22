SELECT
  hiv.Year,
  hiv.County,
  hiv.State,
  hiv.Diagnoses,
  pop.Population,
  prep.Users
FROM HIV hiv
LEFT JOIN POP pop ON hiv.Year = pop.Year AND hiv.County = pop.County AND hiv.State = pop.State
LEFT JOIN PrEP prep ON hiv.Year = prep.Year AND hiv.County = pop.County AND hiv.State = pop.State;