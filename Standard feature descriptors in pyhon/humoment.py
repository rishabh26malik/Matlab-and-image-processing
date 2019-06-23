import cv2
import os, os.path
import csv 
'''
image = cv2.imread("img.jpg")
image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
x=cv2.HuMoments(cv2.moments(image)).flatten()
print(x)
'''
imageDir = "/home/rishabh/PREVIOUS HOME/CODES_descriptors/brain_tumour/qwerty" #specify your path here


image_path_list = []
valid_image_extensions = [".jpg", ".jpeg", ".png", ".tif", ".tiff"] #specify your vald extensions here
valid_image_extensions = [item.lower() for item in valid_image_extensions]
 
for file in os.listdir(imageDir):
    extension = os.path.splitext(file)[1]
    if extension.lower() not in valid_image_extensions:
        continue
    image_path_list.append(os.path.join(imageDir, file))
arr=[] 
for imagePath in image_path_list:
    a=[]
    image = cv2.imread(imagePath)
    if image is not None:
	    imgGrey=cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
	    #hist = hog.compute(imgGrey,winStride,padding,locations)
	    x=cv2.HuMoments(cv2.moments(imgGrey)).flatten()
    elif image is None:
        print ("Error loading: " + imagePath)
        continue
    for i in x:
	        a.append(i)
    arr.append(a)
    #print(type(x))
print((arr))
#for i in arr:
#	print(len(i))

with open('check_file.csv', 'w',newline='') as fp:
	a1=csv.writer(fp)
	#for row in arr:
	a1.writerows(arr)
























'''


image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
x=cv2.HOGDescriptor()
a=hog.compute()
print(a)
'''

'''
winSize = (64,64)
blockSize = (16,16)
blockStride = (8,8)
cellSize = (16,16)
nbins = 9
derivAperture = 1
winSigma = 4.
histogramNormType = 0
L2HysThreshold = 2.0000000000000001e-01
gammaCorrection = 0
nlevels = 64
hog = cv2.HOGDescriptor(winSize,blockSize,blockStride,cellSize,nbins,derivAperture,winSigma,
                        histogramNormType,L2HysThreshold,gammaCorrection,nlevels)
#compute(img[, winStride[, padding[, locations]]]) -> descriptors
winStride = (8,8)
padding = (8,8)
locations = ((10,20),)
hist = hog.compute(image,winStride,padding,locations)

#print(hist[100])
a=[]
for x in hist:
	a.append(x[0])
print((a))	
'''
