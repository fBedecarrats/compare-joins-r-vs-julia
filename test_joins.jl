import Pkg; Pkg.add("DataFrames")
using DataFrames

series1 = DataFrame(
    id1 = ["a", "b", "c", "d", "e", "f"],
    strata = [1, 2, 2, 3, 3, 3]
)
print(series1)

series2 = DataFrame(
    id2 = ["g", "h", "i", "j", "k", "l", "m", "n"],
    strata = [1, 1, 2, 2, 3, 3, 3, 4]
)
print(series2)

test = innerjoin(series1, series2, on = :strata) 
print(test)
