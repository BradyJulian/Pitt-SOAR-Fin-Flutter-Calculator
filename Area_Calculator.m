%Julian Brady - Fin area calculator
clc
clear

disp('____ This script takes fin dimmensions and calculates the area of said fin ____')
disp('input should be in .txt or .csv format with each point in its own row listed x y (with a space in between each point)')
Example=[3,4;5,6;10,1]

contans = 1;
index = 1;
while contans == 1
    %Call fin_area function
    disp(['--------------Fin #',num2str(index),'--------------'])
    fin_area %function
    index=index+1;

    %Condition for repeat
    contans = menu('Do you want to calculate another fin area?','Yes','No');
    disp(' ') %spaces outputs
end


%%%%%%%%-------Functions------%%%%%%%%%%%
function fin_area
    %File aquisition
    filename = input('Please provide the filename you want to analyze: ','s');
        %Error Checking
        while exist(filename) == 0
            filename = input('Error, try again (input should be .txt or .csv): ','s');
        end
    DATA = load(filename);
   
    %Calculating the area of the fin based on x and y values of its points
    x = DATA(:, 1);
    y = DATA(:, 2);
    shape_area = polyarea(x, y);
    disp(['The area of your fin is ',num2str(shape_area)])
end
