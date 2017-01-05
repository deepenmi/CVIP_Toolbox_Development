function div = dividecvip(a,b)
    
% This function performs bitwise division of two images. Datatype of each image is promoted to type double, where needed.
%   SYNTAX: outputImage = dividecvip(inputImage1, inputImage2);
%
%   inputImage1 - first input image
%   inputImage2 - second input image
%
%   Returns: a divided image
%
% 
%------------------------------------------------------------------------

% Checking number of input arguments    
    if nargin<2,
        error('Too few arguements for dividecvip');
    elseif nargin>2,
        error('Too many arguements for dividecvip');
    end;
%----------------------------------------------------------------
% Checking data type of input image and converting to type double if
% necessary    

    if ~isa(a,'double')
        a=double(a);
    end
    
    if ~isa(b,'double')
        b=double(b);
    end
%-------------------------------------------------------------------
% Checking the size of images and making same size by zero padding if
% necessary    
    if size(a,3)>size(b,3)
        b=cat(3,b,b,b);
       %b=repmat(b,[1 1 3]);
    elseif size(b,3)>size(a,3)
        a=cat(3,a,a,a);
    else
    end
    if size(a,2)>size(b,2)
        if size(a,1)>size(b,1)
            %c = zeros(size(a));
            b(end+size(a,1)-size(b,1),end+size(a,2)-size(b,2),1)=0;
        else
            a(end+size(b,1)-size(a,1),end,1)=0;
            b(end,end+size(a,2)-size(b,2),1)=0;
        end
    else
        if size(a,1)<size(b,1)
            a(end+size(b,1)-size(a,1),end+size(b,2)-size(a,2),1)=0;
        else
            a(end+size(a,1)-size(b,1),end,1)=0;
            b(end,end+size(b,2)-size(a,2),1)=0;
        end
    end
%-------------------------------------------------------------------
% Performing division operation on images    
    div = a ./ b;
%     div=div/255;
end