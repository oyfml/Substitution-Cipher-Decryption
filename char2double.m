function double_array = char2double(char_array)

% Please write this function based on the following specifications.
%
% This function char2double.m converts a character array into a double array. More specifically,
%
% Character 'a' or 'A' should be mapped to 1
% Character 'b' or 'B' should be mapped to 2
% ...
% Character 'z' or 'Z' should be mapped to 26
%
% All other characters and punctuations should be mapped to 27.
%
% Example:
% 	double_array = char2double('abc') gives [1 2 3]
% 	double_array = char2double('ABC') gives [1 2 3]
%   double_array = char2double('A YZ') gives [1 27 25 26]
%
% Input:
%   char_array = 1 x N character array
%
% Output:
%   double_array = 1 x N double array

N = length(char_array);
double_array = zeros(1,N); %set output array length
for i = 1:N
    double_array(i) = double(char_array(i));
    if (double_array(i) >= 97)&&(double_array(i) <= 122) %character is lower case a to z (97 to 122)
        double_array (i) = double_array(i) - 96;        
    elseif (double_array(i) >= 65)&&(double_array(i) <= 90) %character are Captial A to Z (65 to 90)
        double_array(i) = double_array(i) - 64;
    else 
        double_array(i) = 27;
    end
end

