# Face Recognition

Recognize  faces of thieves captured with CCTV using 
the world's simplest face recognition library.

Built using [dlib](http://dlib.net/)'s state-of-the-art face recognition
built with deep learning. The model has an accuracy of 99.38% on the
[Labeled Faces in the Wild](http://vis-www.cs.umass.edu/lfw/) benchmark.



## Installation

### Requirements

  * Python 3.3+ or
  
  * clone this repository
  * git clone
  * #do a pip install 
  * pip install -r requirements.txt
  * #modify the database in the settings.py which is this part
  DATABASES = {
    'default': {
        'NAME': 'crime_identify',
        'ENGINE': 'mysql.connector.django',
        'USER': 'root',
        'PASSWORD': 'moswa',
        'OPTIONS': {
          'autocommit': True,
        },
    }
}

* #create a database with the name of your choice
* #import the sql crime_identify.sql in the root folder for the project you cloned
* #you can also run a python migrate if you do not want the data populated in my database
  
  



## Thanks

* Thanks to this repository https://github.com/ageitgey/face_recognition for making this possible
* Thanks to everyone who works on all the awesome Python data science libraries like numpy, scipy, scikit-image,
  pillow, etc, etc that makes this kind of stuff so easy and fun in Python.

