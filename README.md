## Project Description

The purpose of this project is to demonstrate how you can model universal life (UL) products using Rgogo Framework.

Three UL products were modeled in the projects:

1. Plan.UL1

Plan.UL1 is a simplified version of UL product with level amount at risk (i.e. type B).  It has level costs of insurance.  The death benefit is equal to face amount plus fund balance.  

2. Plan.UL2

Plan.UL2 has all the product features from Plan.UL1.  In addition, more complicated features are also added.  They include premium load, expense charge, surrender charge and separate sales compensation schedules applicable to minimum premium and excess premium.

3. Plan.UL3

Plan.UL3 is a type A UL product.  Its death benefit is equal to the maximum of face amount and fund balance plus a corridor. It has increasing costs of insurance.

In the project, discounted cash flow models are set up to perform:

* illustration of a UL policy
* cash flow projection.

## Software Prerequisite

### R

Make sure you have R version 4.0.0 or above installed in your computer.  If your R version is less than 4.0.0, update R to the latest version from CRAN.

To check your R version, execute the following command:

```R
version
```

### Rgogo Framework

You must have Rgogo Framework version 22.1.1 or above installed in your computer.

To check your Rgogo version if you already installed it before:

```R
packageVersion("Rgogo")
```

If you have not installed Rgogo Framework, or have installed an out-dated version, please install the newest version from GitHub.  To do so:

```R
library(devtools)
install_github(repo = "ActPersp/Rgogo")
```
## Package Content

### Model Components

An actuarial model consists of model components.  The source code of each model component is contained in one R script file under "R" folder of the project.  The names of the components are the same as the R script file names.  The model components include the following:

| Model Component | Description |
|---|---|
| Plan.UL1 | A type-B UL plan with simple features. |
| Plan.UL1 | A type-B UL plan with more complex features. |
| Plan.UL1 | A type-A UL plan. |
| ExpnsAssump.UL | Expense assumption. |
| IntrAssump.UL | Interest assumption. |
| LapseAssump.UL | Lapse assumption. |
| MortAssump.UL | Mortality assumption. |
| PremAssump.UL | Premium persistency assumption. |
| Model.DCF.1 | A discounted cash flow model for UL cash flow projection. |
| Model.DCF.2 | A discounted cash flow model for UL cash flow projection by taking into policyholder future premium payment behaviour. |

### Running Models

All R scripts that run the models are located under "batch" folder of the project.  Read the comments in the files before you run the scripts.  

| R Script File | Description |
|---|---|
| _Script_0.R_ | Scripts for deploying projects (see below). |
| _Script_1.R_ | Run cash flow projection for Plan.UL1. |
| _Script_2.R_ | Run cash flow projection for Plan.UL2.|
| _Script_3.R_ | Run cash flow projection for Plan.UL3. |
| _Script_4.R_ | Run cash flow projection for Plan.UL2 by adding an assumption for premium persistency. |

Your must deploy the project when you open the project in RStudio for the first time or every time after you make changes on the model components.  You can deploy the project by execute the following scripts:

```R
library(Rgogo)
DeployProject("SampleUL", overwrite = TRUE)
```

or you can simply run _Script_0.R_ under "batch" folder.

### Inspecting Results

When running a model, the model returns the results as a list.  See the comments and codes in _Script_1.R, Script_2.R, Script_3.R and Script_4.R_ to know how you can inspect the results of illustration, cash flow projection and present values of cash flows.

### Questions?

If you have any questions, you can contact Edward Kuo <ekuo70@gmail.com>
