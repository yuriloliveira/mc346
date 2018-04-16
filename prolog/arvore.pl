getTree(1, tree(12, tree(5, tree(1, nil, nil), tree(9, tree(6, nil, nil), nil)), tree(17, nil, tree(26, nil, tree(96, nil, nil))))).

findTree(X, tree(X,_,_)).
findTree(Y, tree(X,E,_)) :- Y < X, !, findTree(Y, E).
findTree(Y, tree(X,_,D)) :- Y > X, !, findTree(Y, D).

nodeCount(nil, 0).
nodeCount(tree(_,E,D), Count) :- nodeCount(E, CE), nodeCount(D, CD), Count is 1 + CE + CD.