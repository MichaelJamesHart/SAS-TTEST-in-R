# SAS-TTEST-in-R
 Replicating the SAS t-test function in R.

The purpose of this project is to develop an R version of the SAS TTEST procedure.

Specifically, I developed an R function named ttest that has the definition given below.
Statistics produced by the function should be computed according to the same formulas used by the SAS procedure (see SAS TTEST documentation for details).

I limited myself to any functionality provided by the default R system, excluding any external packages —
no library() calls.


Description:
Performs t tests and computes confidence limits for samples from two independent groups.

Usage:
ttest(x, class, alpha = 0.05, plots = FALSE)

Arguments:
x a vector containing the numeric values for the two groups.

class a two-level character, factor, or numeric vector of the same length as x giving the corresponding
group memberships.

alpha numeric (scalar); specifies that confidence intervals are to be 100(1−α)% confidence intervals.
Must be between 0 and 1; the default value of 0.05 results in 95% confidence intervals.

plots logical; whether to produce distributional plots, including histograms, box-plots, interval, and
Q-Q plots.
