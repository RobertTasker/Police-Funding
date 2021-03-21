clear
import excel "/Users/rob/Desktop/Econometrics_Lab/Econometrics Project Data State Only - Police.xls", sheet("2017") firstrow case(lower)

//3. Data Description
summarize police, detail //Table 3.1
summarize crime, detail //Table 3.2

summarize police if crime >= 389.4275, detail //Table 3.3
summarize police if crime <= 389.4275, detail //Table 3.4

regress police crime //Table 3.5


//4. Model Results:
regress police crime pop_dens dem income education white //Table 4.1

pwcorr dem income white //Table 4.2

regress police crime pop_dens dem education //Table 4.3
regress police crime pop_dens income education //Table 4.4
regress police crime pop_dens white education //Table 4.5

regress crime dem income white //Table 4.6


predict newvar, residuals
scatter newvar crime //Graph 1
scatter newvar pop_dens //Graph 2
scatter newvar white //Graph 3
scatter newvar education //Graph 4
