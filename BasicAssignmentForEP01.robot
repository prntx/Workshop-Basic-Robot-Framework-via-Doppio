*** Setting ***
Library     SeleniumLibrary


*** Variables ***   


*** Keywords ***
Say Hello
    Log To Console  ThisisSayHello


*** Test Cases ***
Basic Assignment For EP01 - Basic Robot Framework
    Open Browser    file:///Users/kxngbvss/robot/Paint/ep01/ep01_small_excercise.html   browser=chrome
    Input Text  	xpath=//input[contains(@id,'username')]		Admin
    Input Text  	xpath=//div[2]//input[@type='text']		    1234
    Input Text  	xpath=//div[3]//input[@doppio='nickname']	Paint

    #Drop Drow List
    Select From List By Label    company    Doppio
    Sleep   3

    #Selecting Check box
    Select checkbox     vehicle1
    Select checkbox     vehicle2
    Select checkbox     vehicle3

    Sleep   2

    Unselect checkbox   vehicle2
    Unselect checkbox   vehicle3

    Click element    xpath=//*[@id="use-me"]
    Sleep   3
    handle alert    accept




