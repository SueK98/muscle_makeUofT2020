# from sklearn.multiclass import OneVsRestClassifier
# import numpy as np 

# from sklearn.svm import SVC
# def OneVsRest():
#     X = np.array([
#         [10, 10],
#         [8, 10],
#         [-5, 5.5],
#         [-5.4, 5.5],
#         [-20, -20],
#         [-15, -20]
#         ])
#     y = np.array([0, 0, 1, 1, 2, 2])
#     clf = OneVsRestClassifier(SVC()).fit(X,y)

#     print(clf.predict([[-19, -20], [9, 9], [-5, 5]]))



from sklearn.multiclass import OneVsRestClassifier
from sklearn.svm import SVC
import numpy as np 
import pickle

# data creator:
def create_data(data):
    pass

def fit_data(X,y):
    clf = OneVsRestClassifier(SVC()).fit(X,y)
    return clf

def createClassifier(classifier, dictionary, name = "classifier.clf"):
    with open(name, 'wb') as outfile:
          pickle.dump(clf, outfile)
          pickle.dump(dictionary, outfile)

def readClassifier(name):
    with open(name, "rb") as infile:
        clf = pickle.load(infile)
        dic = pickle.load(infile)
        return clf, dic

    

X = np.array([
        [10, 10],
        [8, 10],
        [-5, 5.5],
        [-5.4, 5.5],
        [-20, -20],
        [-15, -20]
        ])
y = np.array([0, 0, 1, 1, 2, 2])

classification_list = {
  0: "class1",
  1: "class2",
  2: "class3",
  3: "class4"
}
def main():
    name = "tempCLF.clf"

    clf = fit_data(X,y)
    createClassifier(clf, classification_list, name)

    clf1, dictionary = readClassifier(name)

    print(clf1.predict([[-19, -20], [9, 9], [-5, 5]]))
    print(dictionary)

if __name__ == "__main__":
    main()

# with open("test.txt", "wb") as test:
#     num=[5, 10, 15, 20, 25]
#     arr=bytearray(num)
#     test.write(arr)
    # test.write("test_text")



