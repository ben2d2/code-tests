# Code Tests

### Ben Bridges
Software Engineer

## Code samples and tests
1. [Python](#python)
1. [SQL](#sql)
1. [Javascript](#https://github.com/ben2d2/code-tests/blob/master/code-tests/javascript)
-------------------

### Python
Code and tests written using **Python 3.5**, **unittest**, and **pep8 standards**

[python](https://docs.python.org/3.5/)

[unittest](https://docs.python.org/3.5/library/unittest.html)

[pep8](https://www.python.org/dev/peps/pep-0008/)

Run all tests with:

`python -m unittest discover python.tests`

#### IsNullOrEmpty
`python -m unittest python.tests.test_is_null_or_empty`

[Source code](https://github.com/ben2d2/code-tests/blob/master/code-tests/python/is_null_or_empty.py)

[Tests](https://github.com/ben2d2/code-tests/blob/master/code-tests/python/tests/test_is_null_or_empty.py)

#### Find Positive Divisors
`python -m unittest python.tests.test_find_positive_divisors`

[Source code](https://github.com/ben2d2/code-tests/blob/master/code-tests/python/find_positive_divisors.py)

[Tests](https://github.com/ben2d2/code-tests/blob/master/code-tests/python/tests/test_find_positive_divisors.py)

#### Find the Area of a Triangle
`python -m unittest python.tests.test_find_area_of_triangle`

[Source code](https://github.com/ben2d2/code-tests/blob/master/code-tests/python/find_area_of_triangle.py)

[Tests](https://github.com/ben2d2/code-tests/blob/master/code-tests/python/tests/test_find_area_of_triangle.py)


#### Most Common Values In a List
`python -m unittest python.tests.test_most_common_values_in_list`

[Source code](https://github.com/ben2d2/code-tests/blob/master/code-tests/python/most_common_values_in_list.py)

[Tests](https://github.com/ben2d2/code-tests/blob/master/code-tests/python/tests/test_most_common_values_in_list.py)

-------------------

### SQL
Statements written against **postgresql 9.6** and tested using the **psql** command line interface

[postgresql 9.6](https://www.postgresql.org/docs/9.6/index.html)

[psql](https://www.postgresql.org/docs/9.6/app-psql.html)

**Create test db:** [Source sql](https://github.com/ben2d2/code-tests/blob/master/code-tests/sql/create_cm_tests_db.sql)

#### Salesperson SQL
[Salespeople who have an order with George](https://github.com/ben2d2/code-tests/blob/master/code-tests/sql/have_order_with_george.sql)

[Salespeople who do not have an order with George](https://github.com/ben2d2/code-tests/blob/master/code-tests/sql/no_order_with_george.sql)

[Salespeople with two or more orders](https://github.com/ben2d2/code-tests/blob/master/code-tests/sql/with_two_or_more_orders.sql)

[Salesperson with 3rd highest salary](https://github.com/ben2d2/code-tests/blob/master/code-tests/sql/with_third_highest_salary.sql)

[BigOrders roll up table](https://github.com/ben2d2/code-tests/blob/master/code-tests/sql/big_orders_roll_up.sql)

[Total orders per month](https://github.com/ben2d2/code-tests/blob/master/code-tests/sql/total_orders_per_month.sql)

-------------------

### Javascript
Code written with vanilla **Javascript** and unit testing with **mocha**

[mocha](https://www.npmjs.com/package/mocha)

**Ensure mocha is installed:** `npm install mocha`

Run tests: `npm test`

[Source code](https://github.com/ben2d2/code-tests/blob/master/code-tests/javascript/src.js)

[Tests](https://github.com/ben2d2/code-tests/blob/master/code-tests/javascript/tests/test.js)
