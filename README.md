#  PDFKit bug

![screenshot](screenshot.png)

## Description
When a PDFDocument is presented by a PDFView and a PDFPage (containing a UIImage) is inserted programatically, the view is updated to show the new page in the document but the page is inserted upside-down in the bottom right corner and scrolling through the document suddenly becomes impossible.

## Reproduction
*— On a macOS device —*
- Download and open the sample project from: https://github.com/Dev1an/PDFKit-Bug
- Change the developer team
- Run the project on a device or simulator

*— In the app on the iOS device or simulator —*
- Press the "+" icon in the top right corner of the screen.


**What I get**

A page containing the image is shown upside-down in the bottom right corner of the screen and it becomes impossible to scroll and/or zoom

**What I expect**

A page containing the image is shown in the middle of the screen, under the correct angle. Zooming and scrolling through the PDF should continue working.