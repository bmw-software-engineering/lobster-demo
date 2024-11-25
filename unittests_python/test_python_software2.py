import unittest
from source_code_python.python_software2 import intValue, decValue

class TestSoftware2(unittest.TestCase):
    def test_int_value(self):
        # lobster-trace: vanillaEg.output_value_int
        self.assertEqual(intValue(), 10)

    def test_dec_value(self):
        # lobster-trace: vanillaEg.output_value_decimal
        self.assertEqual(decValue(), 10.0)

if __name__ == '__main__':
    unittest.main()
