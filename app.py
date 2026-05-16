import streamlit as st
from PIL import Image
import numpy as np

# Simple mock model function (placeholder)
def predict_eye_disease(image):
    # Mock prediction logic (randomly selects from classes for demo)
    classes = ['CNN', 'DNV', 'Drusen', 'Normal']
    return np.random.choice(classes)

# Sidebar
st.sidebar.title("Navigation")
pages = ["Home", "About", "Contact"]
selection = st.sidebar.selectbox("Go to", pages)
st.sidebar.write("---")
st.sidebar.write("Settings")
st.sidebar.checkbox("Show Debug Info", value=False)

# Taskbar (simulated navigation bar)
st.markdown("""
    <style>
    .taskbar {background-color: #333; padding: 10px 20px; display: flex; justify-content: space-between; align-items: center; color: white; position: fixed; width: 100%; top: 0; z-index: 1000;}
    .taskbar a {color: white; text-decoration: none; margin: 0 15px; font-weight: bold;}
    .taskbar a:hover {color: #ffd700;}
    .content {margin-top: 60px; padding: 20px;}
    </style>
    <div class="taskbar">
        <div>Eye Disease Detector</div>
        <div>
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
        </div>
    </div>
    """, unsafe_allow_html=True)

# Main content (adjust based on sidebar selection)
st.markdown('<div class="content">', unsafe_allow_html=True)

if selection == "Home":
    st.title("Eye Disease Detection")
    st.write("Upload an OCT retinal image to detect eye conditions (CNN, DNV, Drusen, Normal).")

    uploaded_file = st.file_uploader("Choose an image...", type=["jpg", "jpeg", "png"])

    if uploaded_file is not None:
        image = Image.open(uploaded_file).convert("RGB")
        st.image(image, caption="Uploaded OCT Image", use_column_width=True)

        if st.button("Detect Disease"):
            with st.spinner("Analyzing..."):
                prediction = predict_eye_disease(image)
                st.success(f"Predicted Condition: **{prediction}**")
elif selection == "About":
    st.header("About")
    st.write("This is a simple eye disease detection tool using AI. Stay tuned for more features!")
elif selection == "Contact":
    st.header("Contact")
    st.write("Email: support@eyedetector.com | Phone: +1-123-456-7890")

# Footer
st.markdown("---")
st.write("Powered by Simple AI Detection | © 2025")

st.markdown('</div>', unsafe_allow_html=True)