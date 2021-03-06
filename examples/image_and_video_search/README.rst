
Overview
--------

This directory contains methods to accomplish two tasks: 
|
| (a) Performing image searches on an archive of imagery or videos 
| (b) Quickly training up detection models for new categories of objects 
|
Only Linux and Mac are currently supported for running these examples. 

Image Archive Search
--------------------

The "smqtk_on_chips" directory contains multiple methods for running image
queries on an image archive, including: 
|
| (a) Indexing descriptors around each full input image as-is. 
| (b) Tiling up each input image into fixed-size tiles. 
| (c) Indexing descriptors around detections generated by arbitrary detectors. 
|
This primarily uses the SMQTK toolkit and is designed for images, not videos.
A web-based GUI is provided which allows new queries based on an input query
image, and the refinement of results via iterative query refinement (IQR).
IQR generates an SVM classifier on user-nominated positive and negative
examples from the result set to refine results.


Video Archive Search
--------------------

Video archive search can be performed via a few methods. The default includes
a pipeline which generates object detections, tracks, and lastly temporal
descriptors around each track. The descriptors get indexed into an arbitrary
data store (typically a nearest neighbor index, locality-sensitive hashing
table, or other). At query time, descriptors on a query image or video are
matched against the entries in this database. A default GUI (provided via
the VIVIA toolkit) is provided which has similar capabilities to the SMQTK
GUI, ie, search and IQR.
