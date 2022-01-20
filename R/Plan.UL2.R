# This is the implementation of a more complicated UL plan with the following features:
#   1. Type B: death benefit = face amount + fund balance (level net amount at risk).
#   2. Level cost of insurance.
#   3. Minimum interest credit rate is 3%.
#   4. Separate premium load schedules for minimum premium and excess premium.
#   5. Expense charge $10 per month, deducted from fund at the beginning of every policy month. 
#   6. Separate commission and manager override schedules on minimum premium and excess premium.
#   7. Decreasing surrender charge rates (as percentages of fund balance) in the first 10 years.

New.Plan.UL2 <- function() {
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
      premLoadSchd = rep(0.1, length.out = 5),
      premLoadSchd2 = rep(0.025, length.out = 5),
      expnsChrgSchd = 10,
      expnsChrgType = 0L,
      expnsChrgMode = 12L,
      expnsChrgTiming = 0L,
      minIntrCredRate = 0.02,
      surChrgSchd = seq(from = 1, to = 0.1, length.out = 10),
      commSchd = c(0.4, 0.20, 0.1, 0.05, 0.05),
      commSchd2 = c(0.025, 0.025, 0.025, 0.025, 0.025),
      ovrdOnCommSchd = 0.5,
      ovrdOnCommSchd2 = 0.5
   )
   return(object)
}

