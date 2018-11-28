# CM Take-Home Code Test

### Ben Bridges
Software Engineer

## Code samples and tests
### Python
Code and tests written using **Python 3.5**, **unittest**, and **pep8 standards**
Run all tests with: `python -m unittest discover python.tests`

##### IsNullOrEmpty
`python -m unittest python.tests.test_is_null_or_empty`

[Source code](python/is_null_or_empty.py)
[Tests](python/tests/test_is_null_or_empty.py)

##### Find Positive Divisors
`python -m unittest python.tests.test_find_positive_divisors`

[Source code](python/find_positive_divisors.py)
[Tests](python/tests/test_find_positive_divisors.py)

##### Find the Area of a Triangle
`python -m unittest python.tests.test_find_area_of_triangle`

[Source code](python/find_area_of_triangle.py)
[Tests](python/tests/test_find_area_of_triangle.py)

### SQL
Statements written against **postgresql 9.6** and tested using the **psql** command line interface
##### Salesperson SQL test
[Source for creating test db](sql/create_cm_tests_db.sql)
[Source test statements](sql/salesperson.sql)


### Javascript
Code written with vanilla JS and unit testing with mocha
Ensure mocha is installed: `npm install mocha`
Then run `npm test`

[Source code](javascript/src.js)
[Tests](javascript/tests/test.js)
