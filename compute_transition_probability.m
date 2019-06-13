function pr_trans = compute_transition_probability(input_txt)

% Please write this function based on the following specifications.
%
% compute_transition_probability.m takes an input text and
% computes a matrix of transition probability.
%
% Input:
%	input_txt = 1 x N character array
%
% Output:
%    pr_trans = 27 x 27 matrix, where pr_trans(i, j)  = probability j-th letter in the alphabet occurs immediately after i-th letter in the alphabet
%                               e.g., pr_trans(1, 2)  = probability character b occurring immediately after character a
%                               e.g., pr_trans(1, 27) = probability character ' ' occurring immediately after character a
%
% pr_trans(i, j) is defined to be equal to
% (1 + #times j-th letter of alphabet appears after i-th letter of alphabet in input_txt) divided by
% (27 + #times i-th letter of alphabet appears in the text except at the last position in the text)
%
% For example, if the input_txt is 'aaabababa', then
%	# times 'a' appears not corresponding to last position is 5;
%   # times 'a' appears after 'a' is 2; # times 'b' appears after 'a' is 3.
%
%   Therefore pr_trans(1, 1) = (1 + 2)/(5 + 27) = 0.09375
%			  pr_trans(1, 2) = (1 + 3)/(5 + 27) = 0.125
%			  pr_trans(1, 3) = ... = pr_trans(1, 27) = 1/(5 + 27) = 0.03125...
%
%	Observe that sum(pr_trans(1, :)) is equal to 1

pr_trans = zeros(27); %initialise frame of output
N = length(input_txt);

freq_numerator = zeros(27); %setup frame for numerator of formula 
input_double = char2double(input_txt);
%no. of times j-th alphabet appears after i-alphabet in input text
for i = 1:(N-1)
    x = input_double(i);
    y = input_double(i+1);
    freq_numerator(x,y) = freq_numerator(x,y) + 1;
end

freq_denominator = zeros(27,1);%setup frame for denominator of formula
freq_denominator(input_double(N)) = freq_denominator(input_double(N)) - 1;
for i = 1:27
    freq_denominator(i) = freq_denominator(i) + count(input_txt, double2char(i)); %no. of times i-th alphabet appears in input text, except last position (can use tabulate function as well but need to fix array length and fill empty with zero)
    for j = 1:27
        pr_trans(i,j)  = (1 + freq_numerator(i,j))/(27 + freq_denominator(i)); %formula given
    end
end


