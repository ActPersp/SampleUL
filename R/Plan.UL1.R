# This is the implementation of a simple UL plan with the following features:
#   1. Type B: death benefit = face amount + fund balance (level net amount at risk).
#   2. Level cost of insurance.
#   3. Minimum interest credit rate is 3%.
#   4. No premium load, no expense charge.
#   5. Commission and manager override on minimum premium only.
#   6. No commission and manager override on excess premium.
#   7. No surrender charge.  Surrender cash value is equal to fund balance.

New.Plan.UL1 <- function() {
   object <- IPlan.UL(
      covToAge = 100L,
      premTable = c(
         MN = "Prem.UL.MN",
         MS = "Prem.UL.MS",
         FN = "Prem.UL.FN",
         FS = "Prem.UL.FS"
      ),
      coiTable = c(                
         MN = "Prem.COI.MN",
         MS = "Prem.COI.MS",
         FN = "Prem.COI.FN",
         FS = "Prem.COI.FS"
      ),
      minIntrCredRate = 0.02,
      commSchd = c(0.4, 0.20, 0.1, 0.05, 0.05),
      ovrdOnCommSchd = 0.5
   )
   return(object)
}

