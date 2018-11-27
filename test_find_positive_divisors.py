import unittest

class FindPositiveDivisors():
    def calculate(self, value):
        divisors = [value]
        for i in range(1, value):
            if value % i == 0:
                divisors.append(i)
        return sorted(divisors)

class TestFindPositiveDivisors(unittest.TestCase):
    def setUp(self):
        self._class = FindPositiveDivisors()

    def test_calculate(self):
        self.assertEqual(
            self._class.calculate(60),
            [1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60]
        )

if __name__ == '__main__':
    unittest.main()
