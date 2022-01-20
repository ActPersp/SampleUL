# The scripts below run discounted cash flow model for a Plan.UL3 policy.
# Before running the scripts, make sure you have deployed the project. (see batch/Scripts_0.R)

library(Rgogo)
devtools::load_all()


# Create a coverage object.
cov <- Cov(
   planId = "Plan.UL3",
   issDate = as.Date("2022-01-01"),   # issue datee
   issAge = 30L,                      # issue age
   riskClass = "MN",                  # risk class: male nonsmoker
   faceAmt = 100000,                  # face amount
   premMode = 12L,                    # premium mode: annual
   modPrem = 300                      # modal premium
)


# Run discounted cash flow model, and save the results to a variable "result".
result <- Run(Model.DCF.1, cov, list())




##########  The scripts below are optional, depending on how you want to view the results ##########

# View results in RStudio 
View(data.frame(result$Proj))     # View illustration results.
View(data.frame(result$Cf))       # View cash flow projection results.
View(data.frame(result$PV))       # View present values of cash flows results.


# Export results to an Excel file.
# Utilize openxlsx package to export results.  The file is saved under "export" folder of the project.
library(openxlsx)
wb <- createWorkbook()
sht <- addWorksheet(wb, "Illustration")
writeDataTable(wb, sht, data.frame(result$Proj))    #Export illustration results.
sht <- addWorksheet(wb, "CashFlow")
writeDataTable(wb, sht, data.frame(result$Cf))      # Export cash flow projection results.
sht <- addWorksheet(wb, "PVCashFlow")
writeDataTable(wb, sht, data.frame(result$PV))      # Export present values of cash flows results.
saveWorkbook(wb, "export/UL3.xlsx", overwrite = TRUE)


