#Movie Ticket Booking System


*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}  http://127.0.0.1:5000/


*** Test Cases ***

Admin Login test case
    [Documentation]  login page
    [Tags]  ticket booking
    Open Browser  ${url}  chrome
    maximize browser window
    click element  xpath:/html/body/nav/div/div/ul/li[5]/a
    sleep  1s
    click element  xpath:/html/body/nav/div/div/ul/li[5]/ul/li[1]/a

    Input text  name:username  admin
    sleep  1s
    Input text  name:password  12345
    sleep  1s
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[3]/td[2]/button
    sleep  2s



Add owners in admin module test case
    [Documentation]  add
    [Tags]  ticket booking

    click element  xpath:/html/body/nav[2]/div/div/ul/li/a
    sleep  1s
    Input text  name:name  parth
    sleep  1s
    Input text  name:area  Visawa Palace
    sleep  1s
    Input text  name:city  Beed
    sleep  1s
    Input text  name:phone  9130807938
    sleep  1s
    Input text  name:email  parth@gmail.com
    sleep  1s
    Input text  name:username  parth123
    sleep  1s
    Input text  name:password  12345
    sleep  1s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li/a
    sleep  2s


View all owners from admin test case
    [Documentation]  view owners
    [Tags]  ticket booking
    click element  xpath:/html/body/nav[1]/div/div/ul/li/a
    sleep  1s


search owners from admin test case
    [Documentation]  search owners
    [Tags]  ticket booking
    click element  xpath:/html/body/nav/div/div/ul/li[4]/a
    sleep  1s
    input text  name:name  parth
    sleep  2s
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  2s

Delete Owner from admin test case
    [Documentation]  delete owners
    [Tags]  ticket booking
    click element  xpath:/html/body/nav/div/div/ul/li[5]/a
    sleep  1s
    input text  name:name  parth
    sleep  2s
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[1]/a
    sleep  1s

Logout admin test case
    [Documentation]  delete owners
    [Tags]  ticket booking
    click element  xpath:/html/body/nav[6]/div/div/ul/li/a
    sleep  1s


Owner login test case
    [Documentation]  Owner login
    [Tags]  login

    click element  xpath:/html/body/nav/div/div/ul/li[5]/a
    sleep  1s
    click element  xpath:/html/body/nav/div/div/ul/li[5]/ul/li[2]/a
    sleep  1s
    Input text  name:username  owner
    sleep  1s
    Input text  name:password  12345
    sleep  1s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Input text  name:moviename  KGF
    sleep  1s
    Input text  name:mlanguage  Hindi
    sleep  1s
    Input text  name:manimation  2D
    sleep  1s
    Input text  name:showstart  22-05-2022
    sleep  1s
    Input text  name:showend  25-05-2022
    sleep  1s
    Input text  name:cityname  pune
    sleep  1s
    click button  xpath:/html/body/div/div/form/table/tbody/tr[7]/td[2]/button
    sleep  2s

Arrange show test case
    [Documentation]  Arrange show
    [Tags]  ticketbooking

    click element  xpath=/html/body/nav/div/div/ul/li[3]/a
    sleep  1s
    Input text  name:mname  KGF
    sleep  1s
    Input text  name:hid  12
    sleep  1s
    Input text  name:shtime  1
    sleep  1s
    Input text  name:shdate  22-05-2022
    sleep  1s
    Input text  name:prid  1
    sleep  1s
    Input text  name:ciname  pune
    sleep  1s
    click button  xpath=/html/body/div/div/form/table/tbody/tr[7]/td[2]/button
    sleep  2s

#logout owner test case
#    [Documentation]  Arrange show
#    [Tags]  ticketbooking
#    click element  xpath=/html/body/nav/div/div/ul/li[7]/a
#    sleep  1s

View Seat test case
    [Documentation]  Arrange show
    [Tags]  ticketbooking
    click element  xpath=/html/body/nav/div/div/ul/li[6]/a
    sleep  1s
    Input text  name:hallId  14
    sleep  1s
    Input text  name:showId  1
    sleep  1s
    click button  xpath=/html/body/div/div/form/input
    sleep  1s

logout owner test case
    [Documentation]  Arrange show
    [Tags]  ticketbooking
    click element  xpath=/html/body/nav/div/div/ul/li/a
    sleep  1s



Signup page test case
  [Documentation]  Home Page
  [Tags]  User
  click element  xpath= /html/body/nav/div/div/ul/li[4]/a
  sleep  2s
  Input text  name:mname  utkarsh
  sleep  1s
  Input text  name:maddress  hinjewadi
  sleep  1s
  Input text  name:mphone  9529937422
  sleep  1s
  Input text  name:memail  utkarsh1@gmail.com
  sleep  1s
  Input text  name:musername  utkarsh14
  sleep  1s
  Input text  name:mpassword  123
  sleep  1s
  click element  xpath=/html/body/div/div/div/form/table/tbody/tr[7]/td[2]/button


Login page test case
  [Documentation]  Login page
  [Tags]  login
  Input text  name:musername  utkarsh14
  sleep  1s
  Input text  name:mpassword  123
  sleep  1s
  click element  xpath=/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button

Viewall movie text case
  [Documentation]  viewall movie
  [Tags]  movie

  click element  xpath=/html/body/nav/div/div/ul/li[2]/a
  sleep  1s

Book test case
  [Documentation]  login
  [Tags]  user
  click element  xpath=/html/body/nav/div/div/ul/li[3]/a
  sleep  2s
  click element  xpath=/html/body/div/div/form/select[1]/option[1]
  sleep  2s
  click element  xpath= /html/body/div/div/form/select[2]/option[2]
  sleep  2s
  click element  xpath =/html/body/div/div/form/select[3]/option[1]
  sleep  2s
  Input text  name:seatClass  gold
  sleep  1s
  Input text  name:noOfSeats  10
  sleep  1s
  click element  xpath=/html/body/div/div/form/table/tbody/tr[3]/td[2]/button


Payment test case
  [Documentation]  payment
  [Tags]  pay
  Input text  name:name  utkarsh Sontakke
  sleep  1s
  Input text  name:seatClass  gold
  sleep  1s
  Input text  name:email  utkarsh1@gmail.com
  sleep  1s
  Input text  name:amount  500
  sleep  1s
  click element  xpath=/html/body/div/form/div[5]/button
  sleep  1s
  Input text  xpath=/html/body/div[3]/div[2]/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div/form/div/div/ul/li[3]/div[2]/div/input  9529937422
  sleep  1s
  click element  xpath=/html/body/div[3]/div[2]/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div/form/div/div/ul/li[5]/div/button/span[1]
  sleep  2s
  close browser
  click element  xpath=/html/body/div[3]/div[2]/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div/div[2]/div/div/ul/li[1]/a/div/span[2]
  sleep  2s
  close browser


