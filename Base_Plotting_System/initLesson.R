# For compatibility with 2.2.21
swirl_options(swirl_logging = TRUE)


library(jpeg)
library(datasets)

# For compatibility with 2.2.21
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

#data(cars)
data('airquality')
#state <- data.frame(state.x77, region = state.region)
# Put initialization code in this file.
path_to_course <- file.path(.get_course_path(),
	"fes720_Explore","Base_Plotting_System")
try(dev.off(), silent=TRUE)
plot.new()

