# This is the implementation of a type A UL plan with the following features:
#   1. Death benefit = max(face amount, fund balance + corridor 10,000).
#   2. Increasing cost of insurance.  
#   3. The cost of insurance rate is Canadian Institute of Actuaries CIA 97-04 mortality table ultimate rates
#   4. All other product features are the same as Plan.UL1.

New.Plan.UL3 <- function() {
   object <- IPlan.UL.A(
      covToAge = 100L,
      premTable = c(
         MN = "Prem.UL.MN",
         MS = "Prem.UL.MS",
         FN = "Prem.UL.FN",
         FS = "Prem.UL.FS"
      ),
      coiTable = c(                
         MN = "Mort.CIA8692L.MN.Ult",
         MS = "Mort.CIA8692L.MS.Ult",
         FN = "Mort.CIA8692L.FN.Ult",
         FS = "Mort.CIA8692L.FS.Ult"
      ),
      minIntrCredRate = 0.02,
      commSchd = c(0.4, 0.20, 0.1, 0.05, 0.05),
      ovrdOnCommSchd = 0.5,
      corridor = 10000
   )
   return(object)
}

