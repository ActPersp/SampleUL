New.Model.DCF.2 <- function() {
   object <- Model.DCF(
      Rgogo::ArgSet.DCF.Fund(
         projStartDate = as.Date("2022-01-01"),
         mortAssump = "MortAssump.UL",
         lapseAssump = "LapseAssump.UL",
         expnsAssump = "ExpnsAssump.UL",
         intrAssump = "IntrAssump.UL",
         premAssump = "PremAssump.UL"     # Decreasing premium pattern
      )
   )
}