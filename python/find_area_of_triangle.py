class InvalidTriangleException(Exception):
    pass

class FindAreaOfTriangle():
    def calculate_height(self, base, values):
        a, b = values
        tmp_area = (float(a) / float(2)) * float(b)
        return (tmp_area / (base / float(2)))

    def calculate_area(self, a, b, c):
        sides = [a, b, c]
        base = sides.pop(sides.index(max(sides)))

        if not (sides[0] + sides[1] > base):
            raise InvalidTriangleException
        else:
            height = self.calculate_height(base, sides)
            return (height * base) / 2
