#' Economic mobility dataset
#'
#' Data for discussing the probability of improving one's economic situation
#' across 741 Metropolitan Statistical Areas in the US.
#'
#' The variables are:
#'
#' |**Variable** | **Description** |
#' |:---|:--------------------------|
#' |Mobility| The probability that a child born in 1980–1982 into the lowest quintile (20%) of household income will be in the top quintile at age 30. Individuals are assigned to the community they grew up in, not the one they were in as adults.|
#' |Population| in 2000.|
#' |Urban| Is the community primarily urban or rural?|
#' |Black| percentage of individuals who marked black (and nothing else) on census forms.|
#' |Racial Segregation| a measure of residential segregation by race.|
#' |Income Segregation| Similarly but for income.|
#' |Segregation of poverty| Specifically a measure of residential segregation for those in the bottom quarter of the national income distribution.|
#' |Segregation of affluence| Residential segregation for those in the top quarter.|
#' |Commute| Fraction of workers with a commute of less than 15 minutes.|
#' |Mean income| Average income per capita in 2000.|
#' |Gini| A measure of income inequality, which would be 0 if all incomes were perfectly equal, and tends towards 100 as all the income is concentrated among the richest individuals (see Wikipedia, s.v. "Gini coefficient").|
#' |Share 1%| Share of the total income of a community going to its richest 1%.|
#' |Gini bottom 99%| Gini coefficient among the lower 99% of that community.|
#' |Fraction middle class| Fraction of parents whose income is between the national 25th and 75th percentiles.|
#' |Local tax rate| Fraction of all income going to local taxes.|
#' |Local government spending| per capita.|
#' |Progressivity| Measure of how much state income tax rates increase with income.|
#' |EITC| Measure of how much the state contributed to the Earned Income Tax Credit (a sort of negative income tax for very low-paid wage earners).|
#' |School expenditures| Average spending per pupil in public schools.|
#' |Student/teacher ratio| Number of students in public schools divided by number of teachers.|
#' |Test scores| Residuals from a linear regression of mean math and English test scores on household income per capita.|
#' |High school dropout rate| Residuals from a linear regression of the dropout rate on per-capita income.|
#' |Colleges per capita|
#' |College tuition| in-state, for full-time students|
#' |College graduation rate| Again, residuals from a linear regression of the actual graduation rate on household income per capita.|
#' |Labor force participation| Fraction of adults in the workforce.|
#' |Manufacturing| Fraction of workers in manufacturing.|
#' |Chinese imports| Growth rate in imports from China per worker between 1990 and 2000.|
#' |Teenage labor| fraction of those age 14–16 who were in the labor force.|
#' |Migration in| Migration into the community from elsewhere, as a fraction of 2000 population.|
#' |Migration out| Ditto for migration into other communities.|
#' |Foreign| fraction of residents born outside the US.|
#' |Social capital| Index combining voter turnout, participation in the census, and participation in community organizations.|
#' |Religious| Share of the population claiming to belong to an organized religious body.|
#' |Violent crime| Arrests per person per year for violent crimes.|
#' |Single motherhood| Number of single female households with children divided by the total number of households with children.|
#' |Divorced| Fraction of adults who are divorced.
#' |Married| Ditto.|
#' |Longitude| Geographic coordinate for the center of the community|
#' |Latitude| Ditto|
#' |ID| A numerical code, identifying the community.|
#' |Name| the name of principal city or town.|
#' |State| the state of the principal city or town of the community.|
#'
#' @source
#' This data set was based on the paper "Where is the Land of Opportunity?
#' The Geography of Intergenerational Mobility in the United States" (Raj Chetty,
#' Nathaniel Hendren, Patrick Kline, Emmanuel Saez, QJE 2014), and its replication
#' files. Both the paper and the data sets are available from <https://opportunityinsights.org.>
#' @keywords datasets
#' @examples
#' mobility
#'
"mobility"
