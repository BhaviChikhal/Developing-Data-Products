# Final Project for Developing Data Products

## Part 1 - Creating and Deploying a Shiny App

Files:

server.R,
ui.R

#### Introduction

There is currently a Kaggle competition to predict West Nile Virus in mosquitos across the Chicago area.  Here is an excerpt from the website.

West Nile virus is most commonly spread to humans through infected mosquitos. Around 20% of people who become infected with the virus develop symptoms ranging from a persistent fever, to serious neurological illnesses that can result in death.

In 2002, the first human cases of West Nile virus were reported in Chicago. By 2004 the City of Chicago and the Chicago Department of Public Health (CDPH) had established a comprehensive surveillance and control program that is still in effect today.

Every week from late spring through the fall, mosquitos in traps across the city are tested for the virus. The results of these tests influence when and where the city will spray airborne pesticides to control adult mosquito populations.

Given weather, location, testing, and spraying data, this competition asks you to predict when and where different species of mosquitos will test positive for West Nile virus. A more accurate method of predicting outbreaks of West Nile virus in mosquitos will help the City of Chicago and CPHD more efficiently and effectively allocate resources towards preventing transmission of this potentially deadly virus. 

More info can be found on the website:

https://www.kaggle.com/c/predict-west-nile-virus


#### App Description

This is an app to help visualize the fluctuation in the mosquito population.  There are three variables that can be adjusted:

1) Month of observations

2) Year of observations

3) Species of mosquito

Displayed are two maps showing the location and number of a chosen species of mosquito detected on the chosen month and year.  One map shows mosquitos when West Nile Virus is absent and the displays mosquitos when the virus is present.  In certain months, there are no mosquitos recorded or the virus is not detected and in those cases only one map is displayed.  Additionally, the total number mosquitos trapped is displayed for the chosen time period.

#### How to Use the App

App usage is pretty straightforward.  There are two sliders to change the month and year.  There is also a selection menu to choose the mosquito species.  The map (or maps) show the location of the traps with the number of mosquitos found indicated by the size of the dot.  One map shows mosquitos with the West Nile Virus present and the other with the virus absent.

##Part 2 - R presenter presentation

Files:

Final_Project.Rpres,
Final_Project.md,
Final_Project-rpubs.html,
Final_Project-figure,
inputscreenshot.png,
outputscreenshot.png


#### Introduction

The second part of the project is to create a presentation to pitch the shiny app developed in part I.

#### Presentation

The presentation was required to contain the following:

- Exactly 5 slides to pitch the shiny app.
- Developed in R presenter or slidify - mine was developed on R presenter
- Published on either rubs or github - mine was published in rpubs.
- Presentation must contain some embedded R code - mine is on the last slide to compute total number of mosquitos.

