*** Settings ***
Library    OperatingSystem
Library    Process
Library    DataDriver   file_data.csv
Test Template   Tester Conversion

*** Test Cases ***
Tester Conversion ${input_file} ${output_format}    INPUT_FILE    OUTPUT_FORMAT

*** Keywords ***
Tester Conversion
    [Arguments]   ${input_file}    ${output_format}
    Run Process     file_converter.exe     ${input_file} --format=${output_format}
    Should Exist     output/${output_format}/${input_file}
    Log     Conversion réussie : ${input_file} -> ${output_format}