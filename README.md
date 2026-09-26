# Using Stata to Analyze the Impact of Societal Trust on Military Spending
Author: Emma Loeber
<br/>
Website: <a href="https://www.emmaloeber.com/">www.emmaloeber.com</a>
<br/>

Datasets: 
<br/><a href="https://databank.worldbank.org/source/world-development-indicators">World Bank Development Indicators Data (2020)</a>
<br/><a href="https://www.worldvaluessurvey.org/WVSDocumentationWV7.jsp">World Values Survey Dataset (2013)</a>
<br/><a href="https://ucdp.uu.se/downloads/">UCDP/PRIO Armed Conflict Dataset</a>

Results:
<br/><a href="https://github.com/emma-loeber/STATA-trust-and-military-spending-analysis/blob/main/generalizedtrust_militaryspending_analysis.pdf">Full Analysis, Outputs, and Sources in PDF Format</a>
<br/><a href="https://github.com/emma-loeber/STATA-trust-and-military-spending-analysis/blob/main/wvs_wb_ucdp-1.do">Stata .do file</a>

**The Question**<br/>
Military spending levels are a key factor in every country’s position in the international order. How much focus a country puts on the funding of its military differs based on several factors, but based on existing literature it seems that the underlying attitudes of a country (ideology, patriotism, trust, etc.) have the most significant influence. This led me to my research question: Is there an association between levels of generalized trust and military spending as a percent of GDP at the country level? I was interested in how trust influences military spending proportions because societal trust has been found to influence whether a country is more or less likely to engage in multilateral agreements and peacemaking efforts, both of which indicate a reduced likelihood of conflict and thus less need for a large military.

**The Results**<br/>
The analysis of my research question- is there an association between levels of generalized trust and military spending as a percent of GDP at the country level?- led me to the conclusion that there is no significant association between those two variables, and thus I cannot reject my null hypothesis.<br/>

The major finding of this study, however, was surrounding a control variable. I have concluded that the liberal leaning of a government is a significant indicator of levels of military spending. This is because the variable representing support for sexual autonomy in the emancipative values index was found to be a significant indicator of military spending when it was regressed alone, with another control variable, and with the main explanatory variable. All models where it was present (III, IV, and V) found that more support for sexual autonomy was significantly associated with a lower percentage of GDP being spent on the military, ranging from 1.8% to 2.6% less.  

**Regression Table**<br/>
<img width="967" height="411" alt="regressiontable" src="https://github.com/user-attachments/assets/1e95a02e-c05a-4476-a851-6cd1f283ab31" />

**Scatterplot of Emancipative Values and Military Spending**<br/>
<img width="766" height="554" alt="scatterplot" src="https://github.com/user-attachments/assets/f795a8f3-f6a6-41c9-b317-3dbef20ce729" />
