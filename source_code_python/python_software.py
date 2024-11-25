def sum():
   # lobster-trace: vanillaEg.make_sum
   return 10 + 5

def notTracedFunction():
   return "I am not beeing traced"

sum()
notTracedFunction()
