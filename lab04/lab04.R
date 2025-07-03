#' ---
#' title: "Intro to R"
#' author: "Karina Cardenas 
#' PID: A16742606"
#' date: "April 10th 2025"
#' ---


# My first R script
x <- 1:50

plot(x, sin(x))

plot(x, sin(x), typ = "l", col = "green", lwd = 3, xlab = "Silly x axis", 
     ylab = "Sensible y axis")
#typ = type, col = color, lwd = line width, x and ylab = axis names