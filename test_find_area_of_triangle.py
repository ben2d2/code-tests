import unittest
import math

class FindAreaOfTriangle():
    def calculate_height(self, base, values):
        a, b = values
        tmp_area = (float(a) / float(2)) * float(b)
        return (tmp_area / float(base / 2))

    def calculate_area(self, a, b, c):
        sides = [a, b, c]
        base = float(max(sides))
        sides.remove(base)
        height = self.calculate_height(base, sides)
        return (height * base) / 2

class TestFindAreaOfTriangle(unittest.TestCase):
    def setUp(self):
        self._class = FindAreaOfTriangle()

    def test_calculate_area(self):
        self.assertEqual(self._class.calculate_area(3, 4, 5), 6)

if __name__ == '__main__':
    unittest.main()
