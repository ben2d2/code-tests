import unittest

class IsNullOrEmpty():
    def validate(self, value):
        pass

class TestIsNullOrEmpty(unittest.TestCase):
    def setUp(self):
        self._class = IsNullOrEmpty()

if __name__ == '__main__':
    unittest.main()
