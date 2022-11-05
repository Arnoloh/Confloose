
------------
# OCR

**Table of Contents**
  - [Neural Network](#neural-network)
  
  - [Solver](#solver)
  
  - [Line detection and cutting](#Line detection and cutting)
  
  - [Image Processing](#image-processing)


## Neural Network
##### Commands to execute:
	- make             
			Compiles all files in .c extension and create an executable named "xor"
    - ./xor           
        	Runs the neural network already trained.
    - ./xor -t         
        	Trains the network.
    - make clean       
  			Erases the executable

If training, the progress of the network is displayed.
Else, the program ask 2 input and display the prediction.
>        Exemple: Enter two inputs (X Y) or (2 2) to exit:
>        42sh$>    1 0 
>        Input: 1  0 Prediction: 1
------------
## Solver
##### Commands to execute:

 	- make
 			Compiles and create an executable.
	- ./solver "gridXX" [-p]
 			Runs the solver with file gridXX. XX is the number of the grid.
			With or without "-p" to display the unsolved grid and solved in the shell.
 	- make clean
 			Erase the executable.

- Solve the grid number XX
- Save the grid solve in file named gridXX.result

------------


## Line detection and cutting
##### Commands to execute:
	- make
  			Compiles all files in .c extension and create an executable.
	- ./main "file path"
			Runs file main
	- make clean
			Erases all files created
	- make delete
			Erases all file with .bmp extension

- Displaying a new image without line (highlighted in white). The window can be resized.
- Save all cells as bmp files.
------------
## Image Processing
##### Commands to execute:
    - make
            Compiles all files in .c extension and create an executable.
    - ./main img/image
           	Runs main with an image.

- A new image with filter is displayed
- Save new image in img directory named result.png
