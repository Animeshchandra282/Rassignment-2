install.packages("imager")
library(imager)

flip <- function (image) {

width <- dim(image) [1]

height <- dim(image) [2]

flipped_image <- imager::imager (matrix(0, width, height, dimnames = list(NULL, NULL)))

for (i in 1:width) {

flipped_image[i, ] <- image [ (width - i + 1), ]

}

return(flipped_image)

}

image <- imager::load.image("path_to_your_image.jpg")

imager::plot(image, main = "Original Image")

flipped_image <- flip(image)

imager::plot(flipped_image, main = "Flipped Image")




