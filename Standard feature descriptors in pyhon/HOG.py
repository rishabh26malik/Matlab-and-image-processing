import cv2
import os, os.path
import csv 
#debug info OpenCV version
#print ("OpenCV version: " + cv2.__version__)

i=0
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
winStride = (8,8)
padding = (8,8)
locations = ((10,20),)
arr=[]

 
#image path and valid extensions
#imageDir = "/home/rishabh/malignant_images" #specify your path here

imageDir = "/home/rishabh/PREVIOUS HOME/CODES_descriptors/brain_tumour/qwerty" #specify your path here


image_path_list = []
valid_image_extensions = [".jpg", ".jpeg", ".png", ".tif", ".tiff"] #specify your vald extensions here
valid_image_extensions = [item.lower() for item in valid_image_extensions]
 
#create a list all files in directory and
#append files with a vaild extention to image_path_list
for file in os.listdir(imageDir):
    extension = os.path.splitext(file)[1]
    if extension.lower() not in valid_image_extensions:
        continue
    image_path_list.append(os.path.join(imageDir, file))
 
#loop through image_path_list to open each image
for imagePath in image_path_list:
    image = cv2.imread(imagePath)
    #cv2.imshow(image);
    # display the image on screen with imshow()
    # after checking that it loaded
    if image is not None:
	    imgGrey=cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
	    #ret,thresh1 = cv2.threshold(imgGrey,127,255,cv2.THRESH_BINARY)
	    
	    hist = hog.compute(imgGrey,winStride,padding,locations)
	    #print(hist)
	    a=[]
	    for x in hist:
	        a.append(x[0])
	    #print(len(a))
	    a.append(0)
	    #print(a)
	    arr.append(a)
	
        #cv2.imshow(imagePath, image)
    elif image is None:
        print ("Error loading: " + imagePath)
        #end this loop iteration and move on to next image
        continue
    #break
    
    # wait time in milliseconds
    # this is required to show the image
    # 0 = wait indefinitely
    # exit when escape key is pressed
    #key = cv2.waitKey(0)
    #if key == 27: # escape
        #break
 
# close any open windows
#cv2.destroyAllWindows()

#print(arr)

print(len(arr))
for i in arr:
	print(len(i))

with open('check_file.csv', 'w',newline='') as fp:
	a1=csv.writer(fp)
	#for row in arr:
	a1.writerows(arr)


