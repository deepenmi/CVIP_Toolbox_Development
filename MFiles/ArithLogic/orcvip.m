function or = orcvip(a,b)
    if isa(a,'double')
        a=uint8(a);
    end
    
    if isa(b,'double')
        b=uint8(b);
    end
    if size(a,3)>size(b,3)
        b=cat(3,b,b,b);
       %b=repmat(b,[1 1 3]);
    else
        a=cat(3,a,a,a);
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
    or = bitor(a,b);
end
