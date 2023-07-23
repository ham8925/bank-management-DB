import streamlit as st

st.image('Covid 1.jpg')
st.markdown("## Object Classifier App with Deep Learning")
st.markdown("""
This app uses Deep learning (MobileNet) libraries namely keras to identify objects from images.

MobileNet is a convolutional neural network that is 50 layers deep. You can load a pretrained version of the network trained on more than a million images from the ImageNet database. The pretrained network can classify images into 1000 object categories, such as keyboard, mouse, pencil, and many animals.

**Made by Wisecorner Labs**

""")

object_image = st.file_uploader("Upload an image...", type=['png','jpg','webp','jpeg'])
submit = st.button('Predict')
