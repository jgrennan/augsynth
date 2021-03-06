% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ridge.R
\name{fit_ridgeaug_inner}
\alias{fit_ridgeaug_inner}
\title{Helper function to fit ridge ASCM}
\usage{
fit_ridgeaug_inner(X_c, X_1, trt, synth_data, lambda, ridge, scm,
  lambda_min_ratio, n_lambda, lambda_max, holdout_length, min_1se)
}
\arguments{
\item{X_1}{Vector of treated leagged outcomes}

\item{trt}{Vector of treatment indicators}

\item{synth_data}{Output of `format_synth`}

\item{lambda}{Ridge hyper-parameter, if NULL use CV}

\item{ridge}{Include ridge or not}

\item{scm}{Include SCM or not}

\item{lambda_min_ratio}{Ratio of the smallest to largest lambda when tuning lambda values}

\item{n_lambda}{Number of lambdas to consider between the smallest and largest lambda value}

\item{lambda_max}{Initial (largest) lambda, if NULL sets it to be (1+norm(X_1-X_c))^2}

\item{holdout_length}{Length of conseuctive holdout period for when tuning lambdas}

\item{min_1se}{If TRUE, chooses the maximum lambda within 1 standard error of the lambda that minimizes the CV error, if FALSE chooses the optimal lambda; default TRUE}

\item{X_C}{Matrix of control lagged outcomes}
}
\value{
\itemize{
         \item{"weights"}{Ridge ASCM weights}
         \item{"lambda"}{Value of the ridge hyperparameter}
         \item{"synw"}{The synth weights(for estimating the bias)}
         \item{"lambdas"}{List of lambda values evaluated to tune ridge regression}
         \item{"lambda_errors"}{"The MSE associated with each lambda term in lambdas."}
         \item{"lambda_errors_se"}{"The SE of the MSE associated with each lambda term in lambdas."}
}
}
\description{
Helper function to fit ridge ASCM
}
