import numpy as np
import streamlit as st
#import cv2
#from keras.models import load_model
#import joblib
#from keras.preprocessing import image
#from io import BytesIO
#from tensorflow.keras.applications import resnet50
#Loading the Model
#model = load_model('object_classifier.h5', compile=False)

st.image('logo.png')
st.markdown("## Object Classifier App with Deep Learning")
st.markdown("""
This app uses Deep learning (ResNet50) libraries namely keras to identify objects from images.

ResNet-50 is a convolutional neural network that is 50 layers deep. You can load a pretrained version of the network trained on more than a million images from the ImageNet database. The pretrained network can classify images into 1000 object categories, such as keyboard, mouse, pencil, and many animals.

**Made by WiseCorner labs**

""")

#Uploading the dog image
object_image = st.file_uploader("Upload an image...", type=['png','jpg','webp','jpeg'])
submit = st.button('Predict')

