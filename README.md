**##Final Project##**
*Pmode_OLED_V1*

Project Goal: Display custom images and messages on the OLED screen using both Hardware and Software by creating block design and using provided IP by Digilent on the hardware side while writing C-code to build, program and simulate the design on the software side.

The Pmod OLED is 128x32 pixel monochrome organic LED (OLED) panel powered by the Solomon Systech SSD1306. Users can display any sort of graphical design such as characters and pixel images by programming the device through SPI (serial peripheral interface) as well as sending bitmap images or string array data. 

Hardware part: Download Vivado_library to the project repository to enable the IP 
*Note: Select main folder which include both import peripheral folder and interface folder.  



Set the connection of the pmod_out to the JC port by clicking on the board tab and double click on connector JC.
*Note: This won't work if IF folder is not added to the repository
Creating a block design and add the zynq processing system IP and PmodOLED IP finally let vivado run the connection automation, validate design and create HDL wrapper.

 Finally,  Generate the bitstream and export  the hardware files including the bitstream. 

This will conclude our hardware part of the project in Vivado. 

Software part: Lunch Vitis IDE in a software folder and create the project using the .xsa file of the hardware. Create a new file in the source folder main.c and copy the example C-code into it from viavdo_library.

The code provide a preset demo, However we would like to modify it to display our desire message and image.

To display a message we need to write a code as  follow: 
 *Create a delay for the screen to stay in the same state 
 *Clear the buffer of the display
 *Set the cursor of the display
 *Use function OLED_PutString to input a string array    into display 
 *Update screen to display the message.
  *Create another delay to hold screen output display 


Our Pmod_OLED is able to display only pixel images of 128 x 32 bits size. Therefore, we must convert out images to the correct format. We used the following external website to process this task. 
       https://javl.github.io/image2cpp/


Moreover, To display a pixel image we must use the bitmap function which available in the library code which assign each pixel to its hexadecimal value. This require the following code lines: 

Define bitmap before the main code.

Call the PutBmp function inside the main code to input the image data and include all the other function as done previously. 

Finally, we need to build the project and run it as lunch hardware GDB 

Open the debugger and connect the USB port allow as to quit or rerun the display output
    
    Our display one of the those messages:​

    "We like to meet Batman:"

![Pic](/pic/Batman.png)


[Video_demo](https://www.youtube.com/watch?v=IW0LoMJ0CNk)

​

    Conclusion:
    In this project we were able to connect the Pmod OLED IP to our FPGA Zybo-Z7-10 while customize the display output for our desire. Importing the entire vivado library to the project as well as understanding the example code and modify it was essential for completing this lab. Finally, we were able to complete it succesfuly. 
    ​

    GitHub Vivado Library:​

[digilent_link1](https://github.com/Digilent/vivado-library​)

    ​

    Additional resources:​

[digilent_link2](https://digilent.com/blog/creating-custom-characters-on-the-pmodoled/​)

[image_processing](https://javl.github.io/image2cpp/​)

    ​




