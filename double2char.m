function char_array = double2char(double_array)

% Please write this function based on the following specifications.
%
% This function double2char.m convert a double array to a character array. More specifically,
%
% 1 should be mapped to 'a'
% 2 should be mapped to 'b'
% ...
% 26 should be mapped to 'z'
%
% 27 should be mapped to char(32), which corresponds to white space
%
% Example:
%   char_array = double2char([1 2 3]) gives 'abc'
%   char_array = double2char([1 27 26 1) gives 'a za'
%
% Input:
%	double_array = 1 x N double array
%
% Output:
%   char_array = 1 x N character array
N = length(double_array);
char_array = zeros(1,N); %set output array length
for i = 1:N
    if (double_array(i) >= 1)&&(double_array(i) <= 26)
        char_array(i) = double_array(i) + 96;
    else 
        char_array(i) = 32;
    end  
end
char_array = char(char_array);

