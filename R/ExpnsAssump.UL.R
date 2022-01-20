# Expense assumption:
#   Maintenanc expense: $100 per policy initially, increase by 1% per year to account for inflation
#   Acquisition expense: $300 per policy

New.ExpnsAssump.UL <- function() {
   Rgogo::ExpnsAssump(
      mePerPol = 100,
      mePerPolInflRate = 0.01,
      aePerPol = 300
   )
}

