import unittest
from python.most_common_values_in_list import MostCommonValuesInList

class TestMostCommonValuesInList(unittest.TestCase):
    def setUp(self):
        self._class = MostCommonValuesInList()

    def test_find_with_integers(self):
        self.assertEqual(self._class.find([5, 4, 3, 2, 4, 5, 1, 6, 1, 2, 5, 4]), [4, 5])
        self.assertEqual(self._class.find([1, 2, 3, 4, 5, 1, 6, 7]), [1])
        self.assertEqual(self._class.find([1, 2, 3, 4, 5, 6, 7]), [1, 2, 3, 4, 5, 6, 7])

    def test_find_with_strings(self):
        self.assertEqual(self._class.find(['foo', 'bar', 'foo']), ['foo'])

    def test_find_with_mix_of_integers_and_strings(self):
        self.assertEqual(self._class.find([5, 'foo', 'bar', 2, 4, 5, 'foo']), ['foo', 5])

if __name__ == '__main__':
    unittest.main()
