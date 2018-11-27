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

        self.assertEqual(
            self._class.calculate(42),
            [1, 2, 3, 6, 7, 14, 21, 42]
        )

        self.assertEqual(
            self._class.calculate(50),
            [1, 2, 5, 10, 25, 50]
        )

        self.assertEqual(
            self._class.calculate(78),
            [1, 2, 3, 6, 13, 26, 39, 78]
        )


if __name__ == '__main__':
    unittest.main()
