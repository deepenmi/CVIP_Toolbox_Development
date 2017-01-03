function xyz = rgb2xyzcvip(a)
    if ~isa(a,'double')
        a=double(a);
    
    end
    if size(a,3)~=3
        error('Invalid Image Input: Requires Color Image');
    end
    r=a(:,:,1);
    g=a(:,:,2);
    b=a(:,:,3);
    
    x = r./(r+g+b);
    y = g./(r+g+b);
    z = b./(r+g+b);
    
    xyz=zeros(size(a));
    xyz(:,:,1)=x;
    xyz(:,:,2)=y;
    xyz(:,:,3)=z;
    xyz = xyz*255;  
end
    
        