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
