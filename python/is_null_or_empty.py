# Question 1
# Using the most appropriate means, implement an "isNullOrEmpty" check on the
# standard String type. It should be functionally equivalent without calling
# any "isNullOrEmpty" built in function.

class IsNullOrEmpty():
    def validate(self, value):
        return not value
