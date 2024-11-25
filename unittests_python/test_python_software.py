import unittest
from source_code_python.python_software import sum, notTracedFunction

class TestSoftware(unittest.TestCase):
    def test_sum(self):
        # lobster-trace: vanillaEg.make_sum
        self.assertEqual(sum(), 15)

    def test_not_traced_function(self):
        self.assertEqual(notTracedFunction(), "I am not beeing traced")

if __name__ == '__main__':
    unittest.main()
