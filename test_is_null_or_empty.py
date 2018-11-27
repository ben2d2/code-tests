import unittest

class IsNullOrEmpty():
    def validate(self, value):
        return not value

class TestIsNullOrEmpty(unittest.TestCase):
    def setUp(self):
        self._class = IsNullOrEmpty()

    def test_false_case(self):
        self.assertFalse(self._class.validate("Some string..."))

    def test_empty_string(self):
        self.assertTrue(self._class.validate(""))

    def test_is_null(self):
        self.assertTrue(self._class.validate(None))

if __name__ == '__main__':
    unittest.main()
