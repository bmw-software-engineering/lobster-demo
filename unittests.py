import unittest
from software import intValue

class TestIntValue(unittest.TestCase):
    def test_return_value(self):
        # lobster-trace: vanillaEg.OutputValue
        result = intValue()
        self.assertIsInstance(result, int)

    def test_return_value2(self):
        result = intValue()
        self.assertIsInstance(result, int)

if __name__ == '__main__':
    unittest.main()
