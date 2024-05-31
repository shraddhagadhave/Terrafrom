X = [[1,2,3],
     [4,5,6],
     [7,8,9]]

res = [[0,0,0],
       [0,0,0],
       [0,0,0]]

for i in range(len(X[0])):
    for j in range(len(X)):
        res [i][j] = X[j][i]

for p in res:
    print(p)