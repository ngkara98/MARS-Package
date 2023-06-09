% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict.mars.R
\name{predict.mars}
\alias{predict.mars}
\title{Predict Mars}
\usage{
\method{predict}{mars}(object, newdata)
}
\arguments{
\item{object}{'mars' object to generate the prediction}

\item{newdata}{dataset that contain independent variable to make the perdition of depend variable using the fitted \code{mars} model}
}
\value{
dataset which contain the predicted depended variable
}
\description{
Predict with an \code{mars} model for new data, returns the predicted basis function.
}
\examples{
test <- mars(y~.,data=data1[1:100,])
predict(test,data1[101:200,])
}
