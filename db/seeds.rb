# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Graphs extension
Refinery::Graphs::Engine.load_seed

# Added by Refinery CMS Surveys extension
#Refinery::Surveys::Engine.load_seed

# Added by Refinery CMS Indicators extension
Refinery::Indicators::Engine.load_seed

indicators_list = [
  ["Civilian Labor Force Participation Rate", "http://taggertbrooks.com/WEB/CIVPART.html", "http://taggertbrooks.com/WEB/CIVPART.csv"],
  ["Japan / U.S. Foreign Exchange Rate", "http://taggertbrooks.com/WEB/DEXJPUS.html", "http://taggertbrooks.com/WEB/DEXJPUS.csv"],
  ["Real Potential Gross Domestic Product", "http://taggertbrooks.com/WEB/GDPPOT.html", "http://taggertbrooks.com/WEB/GDPPOT.csv"],
  ["Initial Claims in Iowa","http://taggertbrooks.com/WEB/IAICLAIMS.html", "http://taggertbrooks.com/WEB/IAICLAIMS.csv"],
  ["Hires: Total Nonfarm", "http://taggertbrooks.com/WEB/JTSHIL.html", "http://taggertbrooks.com/WEB/JTSHIL.csv"],
  ["Educational and Health Services Employment in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155EDUH.html", "http://taggertbrooks.com/WEB/LACR155EDUH.csv"],
  ["Civilian Labor Force in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155LF.html", "http://taggertbrooks.com/WEB/LACR155LF.csv"],
  ["Per Capita Personal Income in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155PCPI.html", "http://taggertbrooks.com/WEB/LACR155PCPI.csv"],
  ["Of Total Unemployed, Percent Unemployed 27 Weeks and Over", "http://taggertbrooks.com/WEB/LNS13025703.html", "http://taggertbrooks.com/WEB/LNS13025703.csv"],
  ["State Government Tax Collections, Alcoholic Beverages Licenses in Minnesota", "http://taggertbrooks.com/WEB/MNALCLICTAX.html", "http://taggertbrooks.com/WEB/MNALCLICTAX.csv"],
  ["Coincident Economic Activity Index for Minnesota", "http://taggertbrooks.com/WEB/MNPHCI.html", "http://taggertbrooks.com/WEB/MNPHCI.csv"],
  ["30-Year Fixed Rate Mortgage Average in the United States", "http://taggertbrooks.com/WEB/MORTGAGE30US.html", "http://taggertbrooks.com/WEB/MORTGAGE30US.csv"],
  ["Total Construction Spending", "http://taggertbrooks.com/WEB/TTLCONS.html", "http://taggertbrooks.com/WEB/TTLCONS.csv"],
  ["Coincident Economic Activity Index for the United States", "http://taggertbrooks.com/WEB/USPHCI.html", "http://taggertbrooks.com/WEB/USPHCI.csv"],
  ["Initial Claims in Wisconsin", "http://taggertbrooks.com/WEB/WIICLAIMS.html", "http://taggertbrooks.com/WEB/WIICLAIMS.csv"],
  ["Coincident Economic Activity Index for Wisconsin", "http://taggertbrooks.com/WEB/WIPHCI.html", "http://taggertbrooks.com/WEB/WIPHCI.csv"],
  ["countu-ur.html", "http://taggertbrooks.com/WEB/countu-ur.html", "http://taggertbrooks.com/WEB/countu-ur.csv"],
  ["U.S. / Australia Foreign Exchange Rate", "http://taggertbrooks.com/WEB/DEXUSAL.html", "http://taggertbrooks.com/WEB/DEXUSAL.csv"],
  ["Housing Starts: Total: New Privately Owned Housing Units Started", "http://taggertbrooks.com/WEB/HOUST.html", "http://taggertbrooks.com/WEB/HOUST.csv"],
  ["Coincident Economic Activity Index for Iowa", "http://taggertbrooks.com/WEB/IAPHCI.html", "http://taggertbrooks.com/WEB/IAPHCI.csv"],
  ["Job Openings: Total Nonfarm", "http://taggertbrooks.com/WEB/JTSJOL.html", "http://taggertbrooks.com/WEB/JTSJOL.csv"],
  ["Financial Activities Employment in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155FIRE.html", "http://taggertbrooks.com/WEB/LACR155FIRE.csv"],
  ["Manufacturing Employment in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155MFG.html", "http://taggertbrooks.com/WEB/LACR155MFG.csv"],
  ["Other Services Employment in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155SRVO.html", "http://taggertbrooks.com/WEB/LACR155SRVO.csv"],
  ["All Employees: Manufacturing", "http://taggertbrooks.com/WEB/MANEMP.html", "http://taggertbrooks.com/WEB/MANEMP.csv"],
  ["Minnesota - New Private Housing Units Authorized By Building Permit", "http://taggertbrooks.com/WEB/MNBPPRIVSA.html", "http://taggertbrooks.com/WEB/MNBPPRIVSA.csv"],
  ["Real Total Gross Domestic Product by State for Minnesota", "http://taggertbrooks.com/WEB/MNRGSP.html", "http://taggertbrooks.com/WEB/MNRGSP.csv"],
  ["All Employees: Total nonfarm", "http://taggertbrooks.com/WEB/PAYEMS.html", "http://taggertbrooks.com/WEB/PAYEMS.csv"],
  ["Civilian Unemployment Rate", "http://taggertbrooks.com/WEB/UNRATE.html", "http://taggertbrooks.com/WEB/UNRATE.csv"],
  ["Leading Index for the United States", "http://taggertbrooks.com/WEB/USSLIND.html", "http://taggertbrooks.com/WEB/USSLIND.csv"],
  ["Resident Population in Jackson County, WI", "http://taggertbrooks.com/WEB/WIJACK3POP.html", "http://taggertbrooks.com/WEB/WIJACK3POP.csv"],
  ["Real Total Gross Domestic Product by State for Wisconsin", "http://taggertbrooks.com/WEB/WIRGSP.html", "http://taggertbrooks.com/WEB/WIRGSP.csv"],
  ["Consumer Price Index for All Urban Consumers: All Items", "http://taggertbrooks.com/WEB/CPIAUCSL.html", "http://taggertbrooks.com/WEB/CPIAUCSL.csv"],
  ["U.S. / Euro Foreign Exchange Rate", "http://taggertbrooks.com/WEB/DEXUSEU.html", "http://taggertbrooks.com/WEB/DEXUSEU.csv"],
  ["Resident Population in Allamakee County, IA", "http://taggertbrooks.com/WEB/IAALLA5POP.html", "http://taggertbrooks.com/WEB/IAALLA5POP.csv"],
  ["Real Total Gross Domestic Product by State for Iowa", "http://taggertbrooks.com/WEB/IARGSP.html", "http://taggertbrooks.com/WEB/IARGSP.csv"],
  ["Layoffs and Discharges: Total Nonfarm", "http://taggertbrooks.com/WEB/JTSLDL.html", "http://taggertbrooks.com/WEB/JTSLDL.csv"],
  ["Government Employment in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155GOVT.html", "http://taggertbrooks.com/WEB/LACR155GOVT.csv"],
  ["Employees on Nonfarm Payrolls in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155NA.html", "http://taggertbrooks.com/WEB/LACR155NA.csv"],
  ["Trade, Transportation and Utilities Employment in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155TRAD.html", "http://taggertbrooks.com/WEB/LACR155TRAD.csv"],
  ["University of Michigan Inflation Expectation", "http://taggertbrooks.com/WEB/MICH.html", "http://taggertbrooks.com/WEB/MICH.csv"],
  ["Continued Claims in Minnesota", "http://taggertbrooks.com/WEB/MNCCLAIMS.html", "http://taggertbrooks.com/WEB/MNCCLAIMS.csv"],
  ["Leading Index for Minnesota", "http://taggertbrooks.com/WEB/MNSLIND.html", "http://taggertbrooks.com/WEB/MNSLIND.csv"],
  ["New Private Housing Units Authorized by Building Permits", "http://taggertbrooks.com/WEB/PERMIT.html", "http://taggertbrooks.com/WEB/PERMIT.csv"],
  ["S&P Case-Shiller National Composite Home Price Index for the United States", "http://taggertbrooks.com/WEB/USCSCOMHPISA.html", "http://taggertbrooks.com/WEB/USCSCOMHPISA.csv"],
  ["State Government Tax Collections, Alcoholic Beverages Licenses in Wisconsin", "http://taggertbrooks.com/WEB/WIALCLICTAX.html", "http://taggertbrooks.com/WEB/WIALCLICTAX.csv"],
  ["Resident Population in Juneau County, WI", "http://taggertbrooks.com/WEB/WIJUNE7POP.html", "http://taggertbrooks.com/WEB/WIJUNE7POP.csv"],
  ["Leading Index for Wisconsin", "http://taggertbrooks.com/WEB/WISLIND.html", "http://taggertbrooks.com/WEB/WISLIND.csv"],
  ["Canada / U.S. Foreign Exchange Rate", "http://taggertbrooks.com/WEB/DEXCAUS.html", "http://taggertbrooks.com/WEB/DEXCAUS.csv"],
  ["U.S. / U.K. Foreign Exchange Rate", "http://taggertbrooks.com/WEB/DEXUSUK.html", "http://taggertbrooks.com/WEB/DEXUSUK.csv"],
  ["Iowa - New Private Housing Units Authorized By Building Permit", "http://taggertbrooks.com/WEB/IABPPRIVSA.html", "http://taggertbrooks.com/WEB/IABPPRIVSA.csv"],
  ["Leading Index for Iowa", "http://taggertbrooks.com/WEB/IASLIND.html", "http://taggertbrooks.com/WEB/IASLIND.csv"],
  ["Quits: Total Nonfarm", "http://taggertbrooks.com/WEB/JTSQUL.html", "http://taggertbrooks.com/WEB/JTSQUL.csv"],
  ["Information Employment in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155INFO.html", "http://taggertbrooks.com/WEB/LACR155INFO.csv"],
  ["Construction, Natural Resources and Mining Employment in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155NRMN.html", "http://taggertbrooks.com/WEB/LACR155NRMN.csv"],
  ["Unemployment Rate in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155UR.html", "http://taggertbrooks.com/WEB/LACR155UR.csv"],
  ["http://taggertbrooks.com/WEB/MISC_state_coincident.html", "http://taggertbrooks.com/WEB/MISC_state_coincident.html", "http://taggertbrooks.com/WEB/MISC_state_coincident.csv"],
  ["Resident Population in Houston County, MN", "http://taggertbrooks.com/WEB/MNHOUS5POP.html", "http://taggertbrooks.com/WEB/MNHOUS5POP.csv"],
  ["Resident Population in Winona County, MN", "http://taggertbrooks.com/WEB/MNWINO9POP.html", "http://taggertbrooks.com/WEB/MNWINO9POP.csv"],
  ["S&P 500", "http://taggertbrooks.com/WEB/SP500.html", "http://taggertbrooks.com/WEB/SP500.csv"],
  ["All Employees: Education & Health Services", "http://taggertbrooks.com/WEB/USEHS.html", "http://taggertbrooks.com/WEB/USEHS.csv"],
  ["Wisconsin - New Private Housing Units Authorized By Building Permit", "http://taggertbrooks.com/WEB/WIBPPRIVSA.html", "http://taggertbrooks.com/WEB/WIBPPRIVSA.csv"],
  ["Resident Population in La Crosse County, WI", "http://taggertbrooks.com/WEB/WILACR3POP.html", "http://taggertbrooks.com/WEB/WILACR3POP.csv"],
  ["Resident Population in Trempealeau County, WI", "http://taggertbrooks.com/WEB/WITREM1POP.html", "http://taggertbrooks.com/WEB/WITREM1POP.csv"],
  ["China / U.S. Foreign Exchange Rate", "http://taggertbrooks.com/WEB/DEXCHUS.html", "http://taggertbrooks.com/WEB/DEXCHUS.csv"],
  ["Dow Jones Industrial Average", "http://taggertbrooks.com/WEB/DJIA.html", "http://taggertbrooks.com/WEB/DJIA.csv"],
  ["Continued Claims in Iowa", "http://taggertbrooks.com/WEB/IACCLAIMS.html", "http://taggertbrooks.com/WEB/IACCLAIMS.csv"],
  ["Job Openings, Layoffs, Quits", "http://taggertbrooks.com/WEB/JOLTS.html", "http://taggertbrooks.com/WEB/JOLTS.csv"],
  ["Total Separations: Total Nonfarm", "http://taggertbrooks.com/WEB/JTSTSL.html", "http://taggertbrooks.com/WEB/JTSTSL.csv"],
  ["Leisure and Hospitality Employment in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155LEIH.html", "http://taggertbrooks.com/WEB/LACR155LEIH.csv"],
  ["Professional and Business Services Employment in La Crosse, WI-MN (MSA)", "http://taggertbrooks.com/WEB/LACR155PBSV.html", "http://taggertbrooks.com/WEB/LACR155PBSV.csv"],
  ["Civilian Labor Force Participation Rate - 25 to 54 years", "http://taggertbrooks.com/WEB/LNS11300060.html", "http://taggertbrooks.com/WEB/LNS11300060.csv"],
  ["http://taggertbrooks.com/WEB/MISC_state_leading.html", "http://taggertbrooks.com/WEB/MISC_state_leading.html", "http://taggertbrooks.com/WEB/MISC_state_leading.csv"],
  ["Initial Claims in Minnesota", "http://taggertbrooks.com/WEB/MNICLAIMS.html", "http://taggertbrooks.com/WEB/MNICLAIMS.csv"],
  ["S&P Case-Shiller Home Price Index for Minneapolis, Minnesota", "http://taggertbrooks.com/WEB/MNXRSA.html", "http://taggertbrooks.com/WEB/MNXRSA.csv"],
  ["S&P Case-Shiller 20-City Home Price Index", "http://taggertbrooks.com/WEB/SPCS20RSA.html", "http://taggertbrooks.com/WEB/SPCS20RSA.csv"],
  ["All Employees: Government", "http://taggertbrooks.com/WEB/USGOVT.html", "http://taggertbrooks.com/WEB/USGOVT.csv"],
  ["Continued Claims in Wisconsin", "http://taggertbrooks.com/WEB/WICCLAIMS.html", "http://taggertbrooks.com/WEB/WICCLAIMS.csv"],
  ["Resident Population in Monroe County, WI", "http://taggertbrooks.com/WEB/WIMONR1POP.html", "http://taggertbrooks.com/WEB/WIMONR1POP.csv"],
  ["Resident Population in Vernon County, WI", "http://taggertbrooks.com/WEB/WIVERN3POP.html", "http://taggertbrooks.com/WEB/WIVERN3POP.csv"]
]

indicators_list.each do |i|
  Refinery::Indicators::Indicator.create(name: i[0], iframe_url: i[1], csv_url: i[2])
end  
