function not = notcvip(a)

% This function performs a logical NOT on an image. Complex data is NOT supported. 
% Also known as complementing an image. 
%   SYNTAX: outputImage = notcvip(inputImage1);
%
%   inputImage1 - first input image
%
%   Returns: a NOT image
%
% AUTHOR: Deependra Mishra
%------------------------------------------------------------------------

% Checking number of input arguments    
    if nargin<1,
        error('Too few arguements for notcvip');
    elseif nargin>1,
        error('Too many arguements for notcvip');
    end;
%----------------------------------------------------------------
% Checking data type of input image and converting to type uint8 if
% necessary    
    if isa(a,'double')
        a=uint8(a);
    end
%-------------------------------------------------------------------
% Performing NOT operation on images     
    not = bitcmp(a);
end
