

CONFIG += qt

ICON = Nikon_D40.icns

# On the mac, we use the ImageCapture framework. For linking purposes,
# qmake does the righ thing but we need to add the -F flag to CXX flags
# so that header include paths are set up properly.
QMAKE_CXXFLAGS += -F/System/Library/Frameworks/Carbon.framework/Frameworks

# User interface files
FORMS   += camtool.ui aboutbox.ui aboutdevice.ui preferences.ui preview.ui debug.ui
HEADERS += CamtoolMain.h CamtoolPreferences.h CamtoolAboutBox.h CamtoolAboutDevice.h image_math.h version.h
SOURCES += main.cpp CamtoolMain.cpp grab_camera.cpp camera_images.cpp
SOURCES += CamtoolPreferences.cpp
SOURCES += CamtoolAboutBox.cpp
SOURCES += CamtoolAboutDevice.cpp
HEADERS += CamtoolPreview.h HMSSpinBox.h
SOURCES += CamtoolPreview.cpp HMSSpinBox.cpp
HEADERS += CamtoolDebug.h
SOURCES += CamtoolDebug.cpp
SOURCES += ptp_misc.cpp image_math.cpp

# The CameraControl base class
HEADERS += CameraControl.h
SOURCES += CameraControl.cpp CameraControl_inventory.cpp

# The Mac ICA implementation of CameraControl
HEADERS += MacICACameraControl.h
SOURCES += MacICACameraControl.cpp MacICA_inventory.cpp MacICA_events.cpp MacICA_debug.cpp MacICABlacklist.cpp MacPTPCameraControl.cpp
