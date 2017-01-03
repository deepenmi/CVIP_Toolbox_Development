function add = addcvip(a,b)
    if ~isa(a,'double')
        a=double(a);
    end
    
    if ~isa(b,'double')
        b=double(b);
    end
            
    if size(a,3)>size(b,3)
        b=cat(3,b,b,b);
        %b=repmat(b,[1 1 3]);
    elseif size(a,3)<size(b,3)
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
            
    add = a + b;
    
end
