***Settings***
Documentation	Equality Test suite
Library		Collections

***Variables***
${MESSAGE}		Hello world!!

***Keywords***
My String Length
    [Arguments]     ${arg1}     ${arg2}
    Log             ${arg1}
    Log             ${arg2}
	${arg1}			Get Length	${arg1}
	${arg2}			Get Length	${arg2}
	Should Be Equal	${arg1}	${arg2}

***Test Cases***
Test Case:1
	[Tags]				Positive
	[Documentation]		Verify that both messages should be equal.
	Should Be Equal		${MESSAGE}	Hello world!!

Test Case:2
	[Tags]				Negative
	[Documentation]		Verify that both messages should be equal.
	Should Be Equal	    ${MESSAGE}	Hello world 

Test Case:3
	[Tags]				Positive
	[Documentation]		Verify that 4th index of list should be 4.
	@{LIST}				Create List  1  2  3  4  5
	Log List 			${LIST}
	Should Be Equal		${LIST[3]}	4
	Log to console		\n=> 4th index of list is given below :
	Log to console		${LIST[3]}

Test Case:4
	[Tags]				Positive
	[Documentation]		Verify that 2nd key value of dictionary should be 2.
	&{DICT}				Create Dictionary  key1=1	key2=2	key3=3
	Log to console		\n=> 2nd Key value of dictionary is given below :
	Log to console		&{DICT}[key2]
	Should Be Equal		&{DICT}[key2]	2

Test Case:5-1
	[Tags]				Positive
    [Documentation]     Verify that length of both strings should be same.
    My String Length    volansys    volansys

Test Case:5-2
	[Tags]				Negative
    [Documentation]     Keyword with no Arguments
    My String Length

Test Case:5-3
	[Tags]				Negative
    [Documentation]     Length of strings are different
    My String Length    Volansys    Technologies


