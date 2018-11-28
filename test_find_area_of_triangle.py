import unittest
import math

class InvalidTriangleException(Exception):
    pass

class FindAreaOfTriangle():
    def calculate_height(self, base, values):
        a, b = values
        tmp_area = (float(a) / float(2)) * float(b)
        return (tmp_area / (base / float(2)))

    def calculate_area(self, a, b, c):
        sides = [a, b, c]
        base = sides.pop(sides.index(max(sides)))

        if not (sides[0] + sides[1] > base):
            raise InvalidTriangleException
        else:
            height = self.calculate_height(base, sides)
            return (height * base) / 2

class TestFindAreaOfTriangle(unittest.TestCase):
    def setUp(self):
        self._class = FindAreaOfTriangle()

    def test_calculate_height(self):
        self.assertEqual(self._class.calculate_height(5, [3, 4]), 2.4)

    def test_calculate_area(self):
        self.assertEqual(self._class.calculate_area(3, 4, 5), 6)

    def test_raises_exception_with_invalid_sides(self):
        self.assertRaises(InvalidTriangleException, self._class.calculate_area, 1, 1, 10)

    def test_raises_exception_with_a_negative_value(self):
        self.assertRaises(InvalidTriangleException, self._class.calculate_area, 1, 1, -10)

if __name__ == '__main__':
    unittest.main()
