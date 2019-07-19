#' Age estimation from aspartic acid concentration
#'
#' Aspartic acid data for modern upper and lower first pre-molars: taken from
#' Gillard et al 1991
#'
#' @format A data.frame with 37 rows and 3 columns:
#' \describe{
#' \item{age}{Age in years.}
#' \item{period}{Period of tooth, modern or victorian.}
#' \item{aspartic}{Percentage of D-aspartic acid.}
#' }
#'
#' @source Gillard, R.D., Hardman, S.M., Pollard, A.M., Sutton, P.A. and
#' Whittaker, D.K. (1991) 'Determinations of age at death in the archaeological populations
#' using the D/L ratio of aspartic acid in dental collagen' in Archaeometry 90,
#' eds. Pernicka, E. and Wagner, G.A., p.637-644, Birkhauser Verlag, Berlin.
"acid.df"


#' Energy requirements for different activities
#'
#' An experiment was conducted to compare the energy requirements of three
#' physical activities: running, walking and bicycle riding. Eight subjects were
#' asked to run, walk and bicycle a measured distance, and the number of
#' kilocalories expended per kilometre was measured for each subject during
#' each activity. The activities are run in random order with time for recovery
#' between activities. Each activity was monitored exactly once for each
#' individual.
#'
#' @format A data.frame with 24 rows and 3 columns:
#' \describe{
#' \item{subject}{a subject ID.}
#' \item{activity}{running, walking, riding.}
#' \item{energy}{energy expended during activity, in kilocalories (Cal)}
#' }
#'
#' @source Milton, J. S. (1992). Statistical Methods in the Biological and Health Sciences
#' 2nd Edition, McGraw-Hill, New York, p. 316--319.
"activity.df"

#' Calculus marks
#'
#' Calculus marks from the 2012 first year calculus course from the
#' Department of Mathematics and Statistics at Lancaster
#' University.
#'
#' @format  A data.frame with 147 rows and two columns:
#' \describe{
#' \item{coursework}{final coursework mark out of 100.}
#' \item{examination}{final examination mark out of 100.}
#' }
#'
#' @source George Moran, Department of Mathematics and Statistics at Lancaster.
"calculus.df"

#' Carbon isotopes in trees
#'
#' These observations were made by Robertson et. al.
#' They are the mean delta 13 C compositions of several
#' individual trees from two locations in Central England
#' mean temperatures from the CET are also given
#'
#' @format A data.frame with 200 rows and 4 columns:
#' \describe{
#'   \item{year}{}
#'   \item{iso}{}
#'   \item{temp}{}
#' }
"carbon.df"

#' Cell survival data
#'
#' The data comes from an experiment to measure the mortality of cancer cells
#' under radiation under taken in the Department of Radiology, University of Cape
#' Town. Four hundred cells were placed on a dish, and three dishes were
#' irradiated at a time, or occasion. After the cells were irradiated, the
#' surviving cells were counted. Since cells would also die naturally, dishes
#' with cells were put into the radiation chamber without being irradiated, to
#' establish the natural mortality. These data gives only these zero-dose data.
#' these data are from ozDASL
"cell_surv.df"

#' Energy and fat in chocolate bars
#'
#' The amount of fat (g) and energy (Cal) in 16 chocolate bars.
#' Source is unknown, but we would be happy to give credit if
#' someone tells us.
#'
#' @format A data.frame with 16 rows and 2columns:
#' \describe{
#' \item{energy}{energy, in Calories = kilocalories}
#' \item{fat}{fat content, in grams}
#' }
#' @source Source is unknown, but we would be happy to give credit if
#' someone tells us.
#' @keywords datasets
"chocolate.df"

#' Age estimation based on changes in dental characteristics
#'
#' @format a data.frame with 759 rows and 10 columns:
#' \describe{
#' \item{sex}{sex of subject, female or male.}
#' \item{age}{age, in years.}
#' \item{quadrant}{location in mouth of tooth}
#' \item{tooth}{tooth identifier}
#' \item{attrition}{}
#' \item{recession}{}
#' \item{dentine}{qualitative assessment of remaining dentine}
#' }
"gustafson.df"

#' Impact strength of insulation cuts in foot-pounds.
#'
#' @format a data.frame with 100 rows and 3 colums:
#' \describe{
#'	\item{Lot}{Lot of insulating material}
#'	\item{Cut}{Lengthwise (Length) or crosswise (Cross)}
#'	\item{Strength}{Impact strength, in foot-pounds (ft-lb)}
#' }
#'@source Ostle, B. (1963). Statistics in Research: Basic Concepts and Techniques for Research.
#'Ames, Iowa. Iowa State University Press.
"insulation.df"

#' Hedgehog growth
#'
#' @format a data.frame with 77 rows and 2 columns:
#' \describe{
#' \item{date}{Date in DD-Month-YYYY format}
#' \item{weight}{weight of the hedgehog, in grams}
#' }
#' @source David Lucy
"hedgehog.growth.df"

#' from the Commission facility in Hanford, Washington. One of the major safety
#' problems encountered there has been the storage of radioactive wastes. Over
#' the years, significant quantities of these substances - including strontium
#' 90 and cesium 137 - have leaked from their open-pit storage areas into the
#' nearby Columbia River, which flows along the Washington-Oregon border, and
#' eventually empties into the Pacific Ocean.
#'
#' To measure the health consequences of this contamination, an index of
#' exposure was calculated for each of the nine Oregon counties having frontage
#' on either the Columbia River or the Pacific Ocean. This particular index was
#' based on several factors, including the county's stream distance from
#' Hanford and the average distance of its population from any water frontage.
#' As a covariate, the cancer mortality rate was determined for each of these
#' same counties.
#' The data give the index of exposure and the cancer mortality rate during
#' 1959-1964 for the nine Oregon counties affected. Higher index values
#' represent higher levels of contamination.
#'
#' @source Fadeley, R. C. (1965). Oregon malignancy pattern physiographically
#' related to Hanford, Washington, Radioisotope Storage. Journal of
#' Environmental Health 27, 883-897.
"radiation.df"

#' Age estimation by root dentine translucency
#'
#' Root dentine translucency is, in humans, an age related physiological
#' feature. In the dentine of teeth in adult humans the
#' tubecular microstructures fill with a highly crystalline substance making
#' them become nearly invisible when looked at in normal light. This process
#' starts from the apical foramen in early adulthood, and progresses up the
#' tooth into advanced old age. Solheim (Lucy et al., 1996) collected data
#' on age, root dentine translucency for 71 maxillary second incisors from a
#' Norweigian population. The sex of each individual was also noted.
#'
#' @format A data.frame with 71 rows and 3 columns:
#' \describe{
#' \item{age}{Age of subject, in years}
#' \item{sex}{Sex of subject, female or male}
#' \item{rdt}{root dentine translucency}
#' }
#'
#' @source Lucy, D., Aykroyd, R.G., Pollard, A.M. and Solheim (1996), T.,"A
#' Bayesian approach to adult human age estimation from dental observations
#' by Johanson's age changes", Journal of Forensic Sciences 41(2):189-194.
"rdt.df"

#' Does insulation make a difference?
#'
#' This data arose from an experiment conducted by David
#' to testing the insulation of the ground floor bedroom
#' of his house--The Spinney. The idea was that the better the insulation
#' the slower the rate cooling, so for some exponential model
#' y(t) = y(0) exp(-lambda t) - the value of lambda should go down
#' for a better insulated room
#
#' In the experiment, David ran two extension cords into the room
#' through a service port to power two electric heaters and a fan.
#' He then sealed up the room by shutting windows and door. The
#' heaters were left to heat up the room as much as they could. This
#' happened to be about 24.6 C. He then turned the heaters and fan off
#' and the recorded the rate of cooling by observing a temperture probe
#' from outside the room for about two hours.
#
#' Standard theory says that the rate of cooling is proportional to
#' the temperature differential between the indoor and outdoor temperatures.
#' To control for this days were selected which had approximately the
#' same external temperatures. The room has walls which are external and
#' internal. It was assumed that the outside and internal house (no heating)
#' had reached an equilibrium so that we only need to know the outside room,
#' but inside house temperature rather than both
#
#' @format A data.frame with 47 rows and 3 columns:
#' \describe{
#' \item{time}{The time since turning off the heaters and fan}
#' \item{uninsulated}{The recorded temperature with absolutely no insulation
#'  in the room whatsoever---outside temperature 8.0 C.}
#' \item{insulated}{The recorded temperature with part of a wall and the floor insulated---
#' outside temperature 8.1 C}
#' }
#' @source David Lucy
"cooling.df"

#' Hedgehog survival
#'
#' The Bunnell Index (or BI) is a measurement of how tightly the hedgehog are
#' curled into a ball. One measurement is taken round the middle of the animal
#' to cross at the point where the nose ends ("A," latitudinal circumference).
#' The other measurement, using a second tape measure already secured underneath
#' the animal, is taken round the hedgehog from head to tail ("B," longitudinal
#' circumference). Care must be taken with both measurements to ensure that the
#' ends of the tape measure meet easily without altering the shape/positioning
#' of the hedgehog. When obtaining measurement A, the positioning of the tape
#' measure is crucial; a measurement taken lower down toward the tail can result
#' in a lower (inaccurate) reading. Repeatedly measuring many hedgehogs over
#' several consecutive days demonstrated consistent BI values and hence the
#' reliability of the method. A is divided by B to give a value for the BI. It
#' is important to determine the BI value to two decimal places (i.e., a value
#' of 0.794, becomes 0.79, while a value of 0.805 becomes 0.81).
#'
#' @format A data.frame with 31 observations and 2 columns:
#' \describe{
#' \item{BI}{The Bunnell Index (BI) of the hedgehog at the time of admission.}
#' \item{survived}{A logical variable recording whether the hedgehog survived or died.}
#' }
#'
#' @source Bunnell, T. (2002) The Assessment of British Hedgehog (Erinaceus europaeus)
#' Casualties on Arrival and Determination of Optimum Release Weights Using a New
#' IndexJournal of Wildlife Rehabilitation 25 (4):11-21
"hedgehog.survival.df"

#' Times taken for a rat to navigate through a maze
#'
#' @format A data.frame with 135 rows and 4 columns:
#' \describe{
#' \item{subject}{An ID for each rat}
#' \item{treatment}{The treatment adminstered to the subject: control/none, thouiracil, thyroxin.}
#' \item{test}{A maze number.}
#' \item{time}{time, in seconds taken for the rat to navigate the maze.}
#' }
"ratmaze.df"

#' Distance travelled by paper planes
#'
#' A group from Queensland University of Technology conducted an experiment
#' where they recorded the distance flown by paper aeroplanes. The experimenters
#' used a sealed corridor at the University, and controlled the design of the
#' aeroplane, the weight of the paper from which each aeroplace was constructed,
#' and the angle of incidence at launch for each paper plane. The data and
#' further notes for this experiment can be found at
#' http://www.statsci.org/data/oz/planes.html.
#'
#' @format A data.frame with 16 rows and 5 columns:
#' \describe{
#'   \item{distance}{Distance travelled in mm.}
#'   \item{paper}{Paper weight in grams per square metre (gsm), either 80 gsm or 50 gsm.}
#'   \item{angle}{Angle of launch, horizontal or 45 degrees.}
#'   \item{design}{Design of the plane, either high performance or simple.}
#' }
#'
#' @source Mackisack, M. S. (1994). What is the use of experiments conducted by
#' statistics students? Journal of Statistics Education, 2, no 1.
"plane.df"

#' Simulated weights of difference breeds of terriers
#'
#' Simulated samples of weights from English terrier breeds
#' with the parameter values for the means for the simulation
#' taken from http://www.dogsindepth.com. The variances are
#' assumed to be constant.
#'
#' @format A data.frame with 30 rows and 2 columns.
#' \describe{
#' \item{weight}{Weight of dog in kg.}
#' \item{breed}{Breed, either Skye, Manchester or Norwich.}
#' }
"terriers.df"
