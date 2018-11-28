# Question 2
# Write a function that takes a single positive integer, and returns a
# collection / sequence (e.g. array) of integers. The return value should
# contain those integers that are  positive divisors  of the input integer.

class FindPositiveDivisors():
    def calculate(self, value):
        divisors = [value]
        for i in range(1, value):
            if value % i == 0:
                divisors.append(i)

        return sorted(divisors)
