import unittest

class IsNullOrEmpty():
    def validate(self, value):
        return value is None or len(value) is 0

class TestIsNullOrEmpty(unittest.TestCase):
    def setUp(self):
        self._class = IsNullOrEmpty()

if __name__ == '__main__':
    unittest.main()
