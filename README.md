# STATA-trust-and-military-spending-analysis
A quantitative study using STATA examining the relationship between level of trust in a country and the amount of money spent on the military.
Introduction
	Military spending levels are a key factor in every country’s position in the international order. How much focus a country puts on the funding of its military differs based on several factors, but based on existing literature it seems that the underlying attitudes of a country (ideology, patriotism, trust, etc.) have the most significant influence (Bartels 1994). This led me to my research question: Is there an association between levels of generalized trust and military spending as a percent of GDP at the country level? I was interested in how trust influences military spending proportions because societal trust has been found to influence whether a country is more or less likely to engage in multilateral agreements and peacemaking efforts (Rathbun 2011), both of which indicate a reduced likelihood of conflict and thus less need for a large military. 

Literature Review
Several studies in the realm of international relations have focused both on how countries are affected by their levels of trust (including trust of their governments, of fellow citizens, and of out-group members) and on what factors influence the degree to which those countries prioritize aspects of military defense (including spending, willingness to fight, and public support for spending). For this study, the explanatory variable will be the level of generalized trust of individuals (a metric including all of the types of trust mentioned above) measured at the country level. The response variable will be military spending as a percent of the gross domestic product (GDP) of said countries. The control variables will be liberal leaning of the country and years each country has spent at war. Based on findings using similar variables, the expected outcome is that lower trust levels will lead to higher defense spending proportions. 
A foundational study on the factors influencing military expenditures found that long term societal values and dispositions had the largest impact on public support for spending, and those values included levels of distrust and levels of patriotism (Bartels 1994). The higher the levels of each, the more military spending the public was willing to support at a country average. The study did not, however, include how actual levels of spending were impacted by trust and patriotism.  
Later researchers contended that trust is an important factor in military spending, but also emphasized the importance of the dominant political parties and ideologies of countries on their spending, finding that more conservative countries are more likely to have higher defense spending proportions, a public that supports more defense spending, and be more willing to engage in conflict, and that the opposite is true for more liberal countries (Eichenberg and Stoll 2017; Rathbun 2011).
Other research has compared countries' involvement in conflict with their levels of military spending. Generally, they concluded that both past conflict and the threat of future conflict made higher spending more likely (Hartley 2012). The finding included both interstate and intrastate conflicts like civil wars. 
The studies that measured the influence of trust on various military focus related response variables used several different methods of measuring levels of trust, and had different definitions of what trust actually was. They included the public’s trust of their government (Hetherington and Husser 2011), mistrust of others (Ember and Ember 1992), trust of other citizens within their same country (Zimelis 2012), and trust of other countries (Rathbun 2011; Oelsner 2007; Herrmann, Tetlock, and Visser 1999). This study will measure trust as generalized trust because it includes several different types of trust in its evaluation, including trust of those from both within and outside the country, and unspecified people whose allegiance is unknown. 
A large proportion of the studies that focused on the association between trust and military spending measured the response variable using a metric of how much defense spending the public is willing to support (Bartels 1994; Hetherington and Husser 2011). For this study, the response variable will instead be measured as the percent of the countries’ GDP that goes to the military, in an attempt to more accurately measure the real outcome that is influenced by the explanatory variable of generalized trust. 
	The question of how trust impacts defense spending is important within international relations because it can help explain why some countries focus more on their militaries than others, and some impacts that a country can expect from low levels of trust. 

Methods
	The data for this study came from three different sources. The response variable of military spending as a percent of gross domestic product (GDP) is from the Development Indicators dataset produced by the World Bank in 2020. It is coded in the dataset as v776 and is a quantitative variable since it measures the percent value of military spending for each country. For this study, the variable was renamed v776_MilSpendGDP for clarity.
	The explanatory variable of level of generalized trust comes from the World Values Survey dataset, and is coded as GenTru. For clarity, the variable has been renamed as GeneralizedTrust. The data for the variable was collected in 2013, and measures the level of generalized trust for each country with a quantitative measure that can range from 0 to 1, including decimals between those values. A value of 1 corresponds with a higher level of generalized trust. It is based on a survey of individuals but is then averaged by country. It factors in levels of trust in in-group individuals (those the respondent is familiar with), out-group individuals (those who are unfamiliar and dissimilar to the respondent), and unspecified others. 
	The control variable of years spent at war is from the Uppsala Conflict Data Program (UCDP)’s Armed Conflict dataset. It is coded as war_conflict_sum and is a quantitative variable measuring the number of years each country has spent at war. The years measured are 1946 to 2020, and includes any years in which a country saw 1,000 battle related deaths, regardless of if those battles were in an interstate, intrastate, or extra systemic conflict. A higher value means more years a country spent at war. The variable has been renamed YearsAtWar for clarity in this study.
The control variable of support for sexual autonomy (access to abortion and divorce, LGBT rights, etc.) also comes from the World Values Survey dataset, and is coded as EV_choice. It has been renamed as SexAutonomySupp for this study. The variable is used to control for the factor that existing literature has found to influence levels of military spending, which is the liberal leaning of a country’s government. In this case, the higher the support for sexual autonomy, the more liberal the government is, and the less money they are expected to spend on their military. The variable is quantitative and the value for each country can range from 0 to 1, including decimals in between. A value of 1 corresponds with more support for sexual autonomy. 
	




Descriptive Statistics

	Above is a summary statistics table for the variables of the study, all of which are quantitative. 

	
Above is a histogram of the response variable, v776_MilSpendGDP, which measures what percent of each country’s GDP is spent on its military. As included in the summary statistics table, the mean for the variable is 1.779784. This means that on average, a country spends 1.8% of its GDP on the military, which is consistent with the center in the histogram. There isn’t a large amount of variation, with the standard deviation at only 1.39 (1.39%). This reduces the chance of a large coefficient for the variable. And that deviation is likely a little high due to the few outliers with about 9% of their GDP going to the military and the right skew. 


Above is a histogram of the explanatory variable of level of Generalized trust. The mean is at 0.44, very close to the center. There appears to be a slight right skew, although the graph is somewhat concentrated around the center, and has a low standard deviation of 0.08.


Above is a histogram of the control variable YearAtWar, which measures the number of years each country has spent at war since 1946. The standard deviation is fairly high, at 8.15, as is the range, at 49, with a significant right skew. The mode is 0, with 57.22% of countries having spent 0 years at war. This possibly reduces the influence the variable could have on the response, since a majority of the countries share the same value. 



Above is a histogram for the control variable SexAutonomySupp, which measures a country’s level of support for sexual autonomy on a scale of 0 to 1. It is a control mechanism for the liberal leaning of a country. It has a slight right skew, with a standard deviation of 0.175. This is somewhat significant, since the range of the variable is only 0.774.






Analysis

	Above is a Pearson Correlation matrix of all variables in the study. The P value of the bivariate association between two variables is the second number listed. v776_MilSpendGDP is the response variable and GeneralizedTrust is the explanatory variable. However, the P value for the relationship between those two variables is 0.4648, which indicates no significance. The changes to significance when the control variables are included will be accounted for in the regression models below.
The matrix does show a significant correlation between SexAutonomySupp, a control variable, and all other variables. This indicates that support of sexual autonomy (a measure of the liberal leaning of a country) could be a relevant indicator of the level of military spending. It also indicates multicollinearity between the variable and generalized trust (the explanatory variable) and years at war (another control variable). The implications of this will be elaborated on in the discussion section. In short, SexAutonomySupport was not found to be a confounding variable.
The control variable measuring years spent at war had no significant bivariate relationship with the response variable, and significance in a multivariate regression is shown below. 

	Above is a regression table with five different models. All of the models included the response variable of v776_MilSpendGDP, listed at the top of the table, but each model varied in what explanatory/control variables were included. A P value of less than 0.05 was needed for significance to be indicated.
	In Model I, only the explanatory variable measuring the level of generalized trust was included. The relationship had a negative coefficient (more trust means less military spending) but there was no significance found in the bivariate relationship. 
	In Model II, only the control variable measuring the years a country has spent at war was included. The relationship had a very small coefficient, and it was positive (more years at war means more military spending) but there was no significant relationship, as the P value was greater than 0.05. 
	In Model III, only the control variable measuring the level of country support for sexual autonomy was included. The coefficient was negative (more support/liberal leaning means less military spending) and the relationship was significant at a level less than 0.05. The scatter plot below shows the significant bivariate relationship between the response variable and the control variable SexAutonomySupp.

	In Model IV, the explanatory and both control variables were included. The explanatory variable and the control variable YearsAtWar both remained insignificant (although the coefficient for YearsAtWar became negative, meaning more years at war means less military spending), while the control variable of SexAutonomySupp remained significant at P less than 0.05. The coefficient for SexAutonomySupp became even more negative, meaning that the relationship became even more steep when GeneralizedTrust and YearsAtWar were included. This model indicates that support for sexual autonomy, and therefore the liberal leaning of a country, is the best indicator in this study of the level of military spending as a percent of GDP. The more liberal a country is, the less (in terms of percent of GDP) it tends to spend on its military. 
	Model V included only the explanatory variable and SexAutonomySupp, showing that support for sexual autonomy is still significant at P less than 0.05 even when the variable YearsAtWar is excluded, and that generalized trust is still insignificant when regressed only with SexAutonomySupp.

Discussion
	The analysis of my research question- is there an association between levels of generalized trust and military spending as a percent of GDP at the country level?- led me to the conclusion that there is no significant association between those two variables, and thus I cannot reject my null hypothesis. 
	Given the indications in the literature suggesting that the result of the study would prove otherwise, this conclusion was somewhat puzzling. It feels necessary then when announcing my conclusion to note a major limitation of the study- the N value for all the models including the generalized trust variable (I, IV, and V) was only 66. This was because of the lack of countries the variable was measured for in the World Values Survey dataset. 66 is less than half the countries in the world, and thus the trends in the variable might not necessarily represent the true trend if all countries had been included. The low N value also makes finding significance harder, and thus the real significance could be higher.
	The major finding of this study, however, was surrounding a control variable. I have concluded that the liberal leaning of a government is a significant indicator of levels of military spending. This is because the variable SexAutonomySupp was found to be a significant indicator of v776_MilSpendGDP when it was regressed alone, with another control variable, and with the main explanatory variable. All models where it was present (III, IV, and V) found that more support for sexual autonomy was significantly associated with a lower percentage of GDP being spent on the military, ranging from 1.8% to 2.6% less.  
	There are two limitations on this finding. First, support for sexual autonomy is a stand in for the trend found in existing literature that more liberal governments spend less on their militaries. Whether or not the variable is an accurate way to measure the liberal vs conservative leaning of a country is debatable. 
	Second, SexAutonomySupp was significantly associated not just with the response variable but also with the control and explanatory variables. I still included the variable despite the multicollinearity for a few reasons. First, the coefficient for SexAutonomySupp and each of the other two variables was below 0.8 (0.6 for generalized trust and -0.3 for years at war), making it less likely for the multicollinearity to have impacted the results in a meaningful way. Second, in no model was generalized trust found to be significant. When regressed alone with the response variable (model I), it had no significance, and SexAutonomySupp had no influence on that. It was still insignificant when regressed with both control variables (model IV) and with just SexAutonomySupp (model V). This means that even the positive relationship with SexAutonomySupp did not cause it to be significant for the response variable. The other control variable, YearsAtWar, was also insignificant whether it was regressed alone or with SexAutonomySupp, so it didn’t appear to alter the results regarding that variable either. Because of this, I did not consider SexAutonomySupp to be a confounding variable and I kept it in the study. But it does place limitations on the validity of the conclusion that support for sexual autonomy is the primary indicator of the response variable. 
	Another limitation of the study as a whole is the exclusion of a control variable measuring level of patriotism by country. In a foundational article for the existing literature, Bartels 1994 concluded that not only trust but also patriotism affected the amount of military spending and willingness to use force. I did not control for that factor in this study because I found no good data measuring patriotic leaning. I also did not think that Bartels’ method of measuring patriotism was reliable, and thus I questioned the validity of his finding. On page 495 of his study, he says “Two of the three primary determinants of willingness to use force are as much cultural as political: a generalized distrust of people and symbolic patriotism (as measured by a question about pride in the American flag)” (Bartels 1994). This explanation of his patriotism variable brings in two concerns: there was only one question to measure it, and it was US-centric. Thus, despite Bartels study being foundational on the evaluation of trust and military focus, I decided to exclude patriotism from my study. This is a possible limitation given that I cannot confirm that patriotism does not have a significant influence on military spending. 
	The study raised one main question for me, which is how do other factors regarding the liberal vs conservative leaning of a country influence military spending? Is support for sexual autonomy a unique case, or do similar variables follow the same trend (that trend being that more liberal countries spend less on their militaries)? And is there a more broad way to measure liberal vs conservative leaning? Thus, if I were to do a study determining factors influencing levels of military spending again, I would focus more on variables concerning ideology and political leaning. The existing literature did include indication that political ideology would likely be significant (Eichenberg and Stoll 2017; Rathbun 2011). But if I were to study the impact of trust again, I would choose a variable/dataset with more countries included in order to have a higher N value. 
	Overall, although this study could not confirm its hypothesis, I believe the finding that a liberal leaning government spends less on its military is relevant to the field of international relations and opens up possibilities for further studies regarding that relationship. 




















Works Cited
Bartels, Larry M. 1994. “The American Public’s Defense Spending Preferences in the Post-Cold War Era.” Public Opinion Quarterly 58 (4): 479. https://doi.org/10.1086/269444.

Eichenberg, Richard C., and Richard J. Stoll. 2017. “The Acceptability of War and Support for Defense Spending: Evidence from Fourteen Democracies, 2004–2013.” Journal of Conflict Resolution 61 (4): 788–813. https://doi.org/10.1177/0022002715600760.

Ember, Carol R., and Melvin Ember. 1992. “Resource Unpredictability, Mistrust, and War: A Cross-Cultural Study.” Journal of Conflict Resolution 36 (2): 242–62. https://doi-org.du.idm.oclc.org/10.1177/0022002792036002002.

Hartley, Keith. 2012. “Conflict and Defence Output: An Economic Perspective.” Revue d’économie politique 122 (2): 171–95. https://doi.org/10.3917/redp.218.0171.

Herrmann, Richard K., Philip E. Tetlock, and Penny S. Visser. 1999. “Mass Public Decisions to Go to War: A Cognitive-Interactionist Framework.” The American Political Science Review 93 (3): 553–73. https://doi.org/10.2307/2585574.

Hetherington, Marc J., and Jason A. Husser. 2011. “How Trust Matters: The Changing Political Relevance of Political Trust.” American Journal of Political Science 56 (2): 312–25. https://doi.org/10.1111/j.1540-5907.2011.00548.x.

Oelsner, Andrea. 2007. “Friendship, Mutual Trust and the Evolution of Regional Peace in the International System.” Critical Review of International Social and Political Philosophy 10 (2): 257–79. https://doi.org/10.1080/13698230701208061.

Rathbun, Brian C. 2011. “The ‘Magnificent Fraud’: Trust, International Cooperation, and the Hidden Domestic Politics of American Multilateralism after World War II.” International Studies Quarterly 55, no. 1: 1-21. https://doi-org.du.idm.oclc.org/10.1111/j.1468-2478.2010.00633.x

Zimelis, Andris. 2012. “Trust and Normative Democratic Peace Theory: Nexus between Citizens and Foreign Policies?” The International Journal of Sociology and Social Policy 32 (1/2): 17–28. https://doi.org/10.1108/01443331211201734.






