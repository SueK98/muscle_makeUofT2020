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
from sklearn import preprocessing
from sklearn.svm import SVC
import numpy as np 
import pickle
import os

classification_list = {
  0: "bad",
  1: "recovering",
  2: "well recovered",
}


REQUIRED_DIMENSION_SIZE = 99

#scaler = preprocessing.RobustScaler()
#scaler = preprocessing.MinMaxScaler()
scaler = preprocessing.Normalizer()

def fit_data(X,y):
    clf = OneVsRestClassifier(SVC()).fit(X,y)
    return clf

def createClassifier(classifier, dictionary, name = "classifier.clf"):
    with open(name, 'wb') as outfile:
          pickle.dump(classifier, outfile)
          pickle.dump(dictionary, outfile)

def readClassifier(name):
    with open(name, "rb") as infile:
        clf = pickle.load(infile)
        dic = pickle.load(infile)
        return clf, dic

def createTrainingData(path):
    tempX = []
    tempY = []
    for (root,dirs,files) in os.walk(path):
        for name in files:
            tempY.append(int(name.split('(')[1].split(")")[0]))

            name = os.path.join(path,name)
            with open(name, "r") as f:
                tempXCol = []
                for line in f:
                    tempXCol.append(int(line.split('/')[0].split('.')[0]))
                tempX.append(tempXCol)

    # print (tempX)
    # print (tempY)

    retY = np.array(tempY)

    xlength = []
    for data in tempX:
        xlength.append(len(data))
    retX = np.ones((len(xlength),REQUIRED_DIMENSION_SIZE))
    for i in range(len(tempX)):
        if len(tempX[i])>REQUIRED_DIMENSION_SIZE:
            diff = len(tempX[i])-REQUIRED_DIMENSION_SIZE
            diff = len(tempX[i]) / diff
            skipNum = 0
            for j in range(REQUIRED_DIMENSION_SIZE):
                if j%diff != 0:
                    retX[i][j]=tempX[i][j+skipNum]
                else:
                    skipNum += 1
                    print(skipNum)
        
        elif len(tempX[i])==REQUIRED_DIMENSION_SIZE:
            for j in range(len(tempX[i])):
                retX[i][j]=tempX[i][j]

        elif len(tempX[i])<REQUIRED_DIMENSION_SIZE:
            for j in range(len(tempX[i])):
                retX[i][j]=tempX[i][j]
    #print (retX)
    print (retY)
    retX = scaler.fit_transform(retX)

    #print (retX)

    return retX, retY

                

# X = np.array([
#         [10, 10],
#         [8, 10],
#         [-5, 5.5],
#         [-5.4, 5.5],
#         [-20, -20],
#         [-15, -20]
#         ])
# y = np.array([0, 0, 1, 1, 2, 2])

def predict_outcome(readings,clf,dict):
    readingsModded = []
    if len(readings)>REQUIRED_DIMENSION_SIZE:
        diff = len(readings)-REQUIRED_DIMENSION_SIZE
        diff = len(readings) / diff
        skipNum = 0
        for j in range(REQUIRED_DIMENSION_SIZE):
            if (j%diff != 0):
                readingsModded.append(readings[j+skipNum])      
            else:
                skipNum =+ 1
    else:
        diff = REQUIRED_DIMENSION_SIZE -len(readings)
        for j in range(len(readings)):
            readingsModded.append(readings[j])
        for i in range(diff):
            readingsModded.append(1)
    array_readings = np.array([readingsModded])        
    readingsModded = scaler.fit_transform(array_readings.reshape(1,-1))
    #print(readingsModded)

    return dict[clf.predict(array_readings.reshape(1,-1))[0]]
    #print(dictionary[clf1.predict([[-19, -20, 23, 1, 4, 6, 16, 17, 17, 2]])[0]])

# usage:
# import helperFunc
# helperFunc.os_rename_lbls('1','training_data')

def os_rename_lbls(lbl,path,clear = False):
    if clear:
        for (root,dirs,files) in os.walk(path):
            for name in files:
                name = os.path.join(path,name)
                Newname = name.split('(')[0]
                Newname+= '.txt'
                os.rename(name,Newname)     
    else:
        for (root,dirs,files) in os.walk(path):
            for name in files:
                name = os.path.join(path,name)
                if '(' not in name:
                    Newname = name
                    Newname += ('('+lbl+')')
                    os.rename(name,Newname) 


def main():
    name = "tempCLF.clf"

    X,y = createTrainingData("training_data")
    # print (X)
    # print (y)

    clf = fit_data(X,y)
    createClassifier(clf, classification_list, name)

    clf1, dictionary = readClassifier(name)

    print(predict_outcome([-19, -20, 23, 1, 4, 6, 16, 17, 17, 2],clf1,dictionary))
    # print(dictionary[clf1.predict([[-19, -20, 23, 1, 4, 6, 16, 17, 17, 2]])[0]])
    #print(dictionary)


if __name__ == "__main__":
    main()



