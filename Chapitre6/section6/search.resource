#search.resource 
*** Keywords *** 
Given The user is on the homepage 
    Log   the user is on the homepage

When The user enters a valid search query 
    Log    the user enters a valid search query

 
Then The results should match the entered text 
    Log   the results should match the entered text