# CM Take-Home Code Test

### Ben Bridges
Software Engineer

## Code samples and tests
### Python
Code and tests written using **Python 3.5**, **unittest**, and **pep8 standards**

[python](https://docs.python.org/3.5/)

[unittest](https://docs.python.org/3.5/library/unittest.html)

[pep8](https://www.python.org/dev/peps/pep-0008/)

Run all tests with:

`python -m unittest discover python.tests`

#### IsNullOrEmpty
`python -m unittest python.tests.test_is_null_or_empty`

[Source code](python/is_null_or_empty.py)

[Tests](python/tests/test_is_null_or_empty.py)

#### Find Positive Divisors
`python -m unittest python.tests.test_find_positive_divisors`

[Source code](python/find_positive_divisors.py)

[Tests](python/tests/test_find_positive_divisors.py)

#### Find the Area of a Triangle
`python -m unittest python.tests.test_find_area_of_triangle`

[Source code](python/find_area_of_triangle.py)

[Tests](python/tests/test_find_area_of_triangle.py)

### SQL
Statements written against **postgresql 9.6** and tested using the **psql** command line interface

[postgresql 9.6](https://www.postgresql.org/docs/9.6/index.html)

[psql](https://www.postgresql.org/docs/9.6/app-psql.html)

[Source for creating test db](sql/create_cm_tests_db.sql)

#### Salesperson SQL
[Salespeople who have an order with George](sql/have_order_with_george.sql)

[Salespeople who do not have an order with George](sql/no_order_with_george.sql)

[Salespeople with two or more orders](sql/with_two_or_more_orders.sql)

[Salesperson with 3rd highest salary](sql/with_third_highest_salary.sql)

[BigOrders roll up table](sql/big_orders_roll_up.sql)

[Total orders per month](sql/total_orders_per_month.sql)


### Javascript
Code written with vanilla JS and unit testing with mocha
**Ensure mocha is installed**

[mocha](https://www.npmjs.com/package/mocha)

`npm install mocha`

Run tests:

`npm test`

[Source code](javascript/src.js)

[Tests](javascript/tests/test.js)
