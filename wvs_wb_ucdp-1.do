///Em Loeber association between military expenditure and generalized trust
///WB, UCDP conflict, and WVS datasets

cd "/Users/macbook/Documents/Stata/Datasets"

*WB dataset location
use "/Users/macbook/Documents/Stata/Datasets/WB Data.dta"

*WVS dataset location
merge 1:1 scode using "/Users/macbook/Documents/Stata/Datasets/WVS_Country Aggregates.dta", force

rename _merge merge

*UCDP conflict dataset location
merge 1:1 scode using "/Users/macbook/Documents/Stata/Datasets/ucdp_countrylevel.dta", force

*renaming variables
rename v776 v776_MilSpendGDP 
rename GenTru GeneralizedTrust
rename war_conflict_sum YearsAtWar
rename EV_choice SexAutonomySupp

*univariate data information for response variable (mil spending)
label var v776_MilSpendGDP "Military Expenditure as a % of GDP"
sum v776_MilSpendGDP, detail
hist v776_MilSpendGDP, freq title("Military Expenditure as a % of GDP Across Countries") subtitle ("Data from World Bank")

*univariate data information for explanatory variable (gen trust)
label var GeneralizedTrust "Level of Generalized Trust"
sum GeneralizedTrust, detail
hist GeneralizedTrust, freq title("Level of Individual's General Trust Across Countries") subtitle ("Data from World Values Survey")

*univariate data information for control variable of involvement in conflict (war_conflict_sum/YearsAtWar)
label var YearsAtWar "Total Years at War"
sum YearsAtWar, detail
hist YearsAtWar, freq title("Years Spent at War by Country") subtitle ("Data from UCDP")

*univariate data information for control variable measuring liberal leaning of country (EV_choice/SexAutonomySupp)
label var SexAutonomySupp "Emancipative Values Index"
sum SexAutonomySupp, detail
hist SexAutonomySupp, freq title("Emancipative Values Index WVS") subtitle ("Level of Support for Sexual Autonomy")

*summary statistics for all quantitative variables
sum v776_MilSpendGDP GeneralizedTrust YearsAtWar SexAutonomySupp

*bivariate quant to quant of response and explanatory
twoway (scatter v776_MilSpendGDP GeneralizedTrust) (lfit v776_MilSpendGDP GeneralizedTrust), legend (off) title("The Relationship btw Generalized Trust and Military Spending across Countries") ytitle("Military Spending as a % of GDP") xtitle("Level of Generalized Trust by Country") 

*bivariate quant to quant graphs of response and control variables
twoway (scatter v776_MilSpendGDP YearsAtWar) (lfit v776_MilSpendGDP YearsAtWar), legend(off) title("The Relationship btw Military Spending and Years at War across Countries") ytitle("Military Spending as a % of GDP") xtitle("Years at War by Country") 
twoway (scatter v776_MilSpendGDP SexAutonomySupp) (lfit v776_MilSpendGDP SexAutonomySupp), legend(off) title("The Relationship btw Military Spending and Emancipative Values") ytitle("Military Spending as a % of GDP") xtitle("Emancipative Values Index Level") 

*pearson correlation and significance
pwcorr v776_MilSpendGDP GeneralizedTrust YearsAtWar SexAutonomySupp, sig

*binary regressions
reg v776_MilSpendGDP GeneralizedTrust
reg v776_MilSpendGDP YearsAtWar
reg v776_MilSpendGDP SexAutonomySupp

*multivariate regressions
reg v776_MilSpendGDP GeneralizedTrust YearsAtWar SexAutonomySupp
reg v776_MilSpendGDP GeneralizedTrust SexAutonomySupp
