import mahotas
import numpy as np
import argparse
#import cPickle
#import glob
import cv2
import os, os.path

class ZernikeMoments:
	def __init__(self, radius):
		# store the size of the radius that will be
		# used when computing moments
		self.radius = radius

	def describe(self, image):
		# return the Zernike moments for the image
		return mahotas.features.zernike_moments(image, self.radius)


valid_image_extensions = [".jpg", ".jpeg", ".png", ".tif", ".tiff"] 
valid_image_extensions = [item.lower() for item in valid_image_extensions]
image_path_list = []
#imageDir = "/home/rishabh/pokedex-zernike/pokedex-zernike/sprites"
#imageDir = "/home/rishabh/benign/benign _images"
imageDir = "/home/rishabh/PREVIOUS HOME/CODES_descriptors/brain_tumour/qwerty" #specify your path here

for f in os.listdir(imageDir):
    extension = os.path.splitext(f)[1]
    if extension.lower() not in valid_image_extensions:
        continue
    image_path_list.append(os.path.join(imageDir, f))
 
print(len(image_path_list))





# initialize our descriptor (Zernike Moments with a radius
# of 21 used to characterize the shape of our pokemon) and
# our index dictionary
desc = ZernikeMoments(21)
index = []

# loop over the sprite images
for spritePath in image_path_list:
	#for spritePath in glob.glob(args["sprites"] + "/*.png"):
	
	image = cv2.imread(spritePath)
	image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
	pokemon = spritePath[spritePath.rfind("/") + 1:].replace(".png", "")
	# pad the image with extra white pixels to ensure the
	# edges of the pokemon are not up against the borders
	# of the image
	#image = cv2.copyMakeBorder(image, 15, 15, 15, 15,
		#cv2.BORDER_CONSTANT, value = 255)
	newimg = cv2.resize(image,(int(600),int(450)))
	# invert the image and threshold it
	thresh = cv2.bitwise_not(newimg)
	thresh[thresh > 0] = 255

	# initialize the outline image, find the outermost
	# contours (the outline) of the pokemone, then draw
	# it
	outline = np.zeros(newimg.shape, dtype = "uint8")
	#(cnts, _) = cv2.findContours(thresh.copy(), cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)

	newimg, cnts, _ = cv2.findContours(thresh.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

	cnts = sorted(cnts, key = cv2.contourArea, reverse = True)[0]
	cv2.drawContours(outline, [cnts], -1, 255, -1)

	# compute Zernike moments to characterize the shape
	# of pokemon outline, then update the index
	moments = desc.describe(outline)
	index.append(moments)
	
## normalization

k=0
for i in index:
	i[0]*=pow(10,1);	
	i[1]*=pow(10,18);	
	i[2]*=pow(10,3);	
	i[3]*=pow(10,16);	
	i[4]*=pow(10,18);	
	i[5]*=pow(10,18);	
	i[6]*=pow(10,2);	
	i[7]*=pow(10,16);	
	i[8]*=pow(10,3);	
	i[9]*=pow(10,18);	
	i[10]*=pow(10,18);
	i[11]*=pow(10,17);
	i[12]*=pow(10,2);	
	i[13]*=pow(10,17);	
	i[14]*=pow(10,3);	
	i[15]*=pow(10,17);			
	i[16]*=pow(10,18);	
	i[17]*=pow(10,18);	
	i[18]*=pow(10,18);	
	i[19]*=pow(10,18);
	i[20]*=pow(10,2);	
	i[21]*=pow(10,17);	
	i[22]*=pow(10,3);	
	i[23]*=pow(10,18);	
	i[24]*=pow(10,3);
	'''for j in i:
		if(j>10):
			index.remove(index[k])
			break	'''
	if(i.any())
	k=k+1	

for i in index:
	print((i))

