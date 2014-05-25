Code book
=========

# Introduction

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals measured by the Samsung Galaxy S. These time domain signals (labeled "time" in our dataset) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (labeled "body", and "gravity" in our dataset) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (labeled "jerk"). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (labeled "magnitude"). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing variables in the frequency domain (labeled "frequency").

# Terms explained

The following terms are used in the measurement names, and clarified for your understanding:

* **time**: measurement in the time domain
* **frequency**: measurement in the frequency domain after having done a Fast Fourier Transform on the time domain

* **body**: the measurement applies to the body itself. I.e. the gravity part of the signal has been subtracted
* **gravity**: the measurement applies to the gravity part of the signal. The body part has been subtracted.

* **accelerometer**: the measurement was done by the accelerometer
* **gyroscope**: the measurement was done by the gyroscope

* **jerk**: these are measurements of the body linear acceleration and angular velocity, derived in time to obtain Jerk signals.
* **magnitude**: these measurements signifiy magnitudes of the three-dimensional signals, calculated using Euclidean norms.

* **mean**: the average of the signal
* **standard deviation**: the standard deviation of the signal

* **x**: the x-component of the measurement
* **y**: the y-component of the measurement
* **z**: the z-component of the measurement