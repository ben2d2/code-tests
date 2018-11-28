import unittest
from python.find_area_of_triangle import FindAreaOfTriangle, InvalidTriangleException

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
