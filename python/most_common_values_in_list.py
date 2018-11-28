# Question 4
# Write a function that takes an array of integers, and returns an array of
# integers. The return value should contain those integers which are most
# common in the input array.

class MostCommonValuesInList():
    def find(self, values_list):
        counts = {}
        for value in values_list:
            counts[value] = counts.get(value, 0) + 1

        max_count_key = max(counts, key=counts.get)

        most_common = []
        for k, v in counts.items():
            if v == counts[max_count_key]:
                most_common.append(k)

        return most_common
