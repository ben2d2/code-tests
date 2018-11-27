import unittest

class IsNullOrEmpty():
    def validate(self, value):
        return value is None or len(value) is 0

class TestIsNullOrEmpty(unittest.TestCase):
    def setUp(self):
        self._class = IsNullOrEmpty()

    def test_false_case(self):
        self.assertFalse(self._class.validate("Some string..."))

if __name__ == '__main__':
    unittest.main()
