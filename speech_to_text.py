#pip install speechrecognition pywin32
#pip install pyaudio
#pip install setuptools
import speech_recognition as sr
import time
import pyaudio
import distutils

def get_spoken_text():
    with sr.Microphone() as source:
        print("Speak now...")
        audio = sr.Recognizer().listen(source)
        try:
            text = sr.Recognizer().recognize_google(audio)
            print("You said:", text)
            return text
        except:
            print("Couldn't recognize your voice.") 
            return ""

if __name__ == "__main__":
    spoken_text = get_spoken_text()
    # Save to a file for AutoHotkey to read
    with open("spoken_text.txt", "w") as f:
        f.write(spoken_text)
        print("Python Script Finished")
    time.sleep(4)  # Slight delay to ensure file saving
    