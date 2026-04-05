*** Test Cases ***
Forloop1
    FOR    ${i}    IN RANGE    1    10    2
        Log to console  \n${i}

    END


    @{items}        Create List     1   2   3   4   5
    FOR    ${i}    IN    @{items}
        Log To Console   \n${i}

    END

    FOR    ${i}    IN    john   david   smith   scott
        Log To Console    \n${i}

    END

    Log To Console    list with string
    @{nameslist}        Create List     john   david   smith   scott
    FOR    ${i}    IN    @{nameslist}
        Log To Console    \n${i}
        IF    '${i}' == 'john'
             BREAK
        END

    END

