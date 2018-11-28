class FindPositiveDivisors():
    def calculate(self, value):
        divisors = [value]
        for i in range(1, value):
            if value % i == 0:
                divisors.append(i)
        return sorted(divisors)
