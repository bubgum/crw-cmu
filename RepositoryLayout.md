# Introduction #

The [SVN repository](http://code.google.com/p/crw-cmu/source/browse/) hosted here is intended to contain all of the documentation and code necessary to build and use one of our vehicles.  Here, we describe the overall layout of the repository, and where difference pieces of code are organized.

# Code Sub-Repositories #

## [Client](http://code.google.com/p/crw-cmu/source/browse/#svn%2Fclient%2Ftrunk) ##

The client library contains all of the interface and utility code necessary to create an application that consumes data from and issues commands to a vehicle.  This library is also linked from the vehicle server, to ensure compatibility between clients and servers.  Most importantly, the client library contains the [vehicle interfaces](http://code.google.com/p/crw-cmu/source/browse/#svn%2Fclient%2Ftrunk%2Fsrc%2Fedu%2Fcmu%2Fri%2Fairboat%2Finterfaces), which allow interaction with a vehicle in a generic manner.  Interfaces can be implemented as Android native code, proxy objects over XML-RPC, or other ways.

## [Server](http://code.google.com/p/crw-cmu/source/browse/#svn%2Fserver%2Ftrunk) ##

The server application is an Android application that implements and services the interfaces provided by the client library.  It contains filtering code to handle pose estimation from the on-phone and vehicle sensors, connects to external add-on sensors, and provides a set of low-level navigation controllers that can be selected to perform different vehicle behaviors.

## [Arduino Firmware](http://code.google.com/p/crw-cmu/source/browse/#svn%2Ffirmware%2Ftrunk) ##

The vehicle interfaces with all low-level devices (serial, analog, and general purpose digital IO) through an Arduino-compatible microcontroller.  The Arduino firmware flashed onto this device provides this functionality through a series of parallel co-routines that implement the necessary functionality.  This project is fairly device specific, and may change drastically if the microcontroller is changed between vehicles.  For older microcontrollers, it may be necessary to search previous [tagged firmware versions](http://code.google.com/p/crw-cmu/source/browse/#svn%2Ffirmware%2Ftags)

## [Bluetooth Updater](http://code.google.com/p/crw-cmu/source/browse/#svn%2Fbtupdater%2Ftrunk) ##

In the current implementation of the vehicles, communication is done via a serial Bluetooth link.  This project contains Arduino code that updates the firmware on a connected Bluetooth serial module, configuring it with the necessary settings to connect transparently to applications on the Android phone.

## [Apps](http://code.google.com/p/crw-cmu/source/browse/#svn%2Fapps%2Ftrunk) ##

Apps contains sample applications that use the client library to demonstrate operating a fleet of boats in various domains.  These include, examples of pollution monitoring and flood response.

# Design Sub-Repositories #

## [Electrical](http://code.google.com/p/crw-cmu/source/browse/#svn%2Felectrical%253Fstate%253Dclosed) ##

Contains schematics and layouts for various electrical systems in the vehicle.  PCB designs are tagged here when they are sent out for fabrication.

## [Mechanical](http://code.google.com/p/crw-cmu/source/browse/#svn%2Fmechanical%253Fstate%253Dclosed) ##

Contains drawings and models for various mechanical systems in the vehicle.  Mechanical components are tagged here when they are sent out for fabrication.

# Infrastructure Sub-Repositories #

## [Snapshots](http://code.google.com/p/crw-cmu/source/browse/#svn%2Fsnapshots) ##

This directory contains compiled libraries of several of the sub-repositories.  These binary snapshots are used to link dependent repositories together without requiring compilation dependencies.  This allows sub-repositories to be checked out and compiled individually.

## [Changes](http://code.google.com/p/crw-cmu/source/browse/#svn%2Fchanges) ##

This directory is used to branch other repositories when someone wants to submit a patch or do a code review.  It is not used for active development.

## [Wiki](http://code.google.com/p/crw-cmu/source/browse/#svn%2Fwiki) ##

This directory is used to store the wiki pages on the Google Code site itself, including this page. Pages are stored in plain text with wiki markup.  Generally, these files are automatically edited through the Google Code site itself, and are not directly modified.