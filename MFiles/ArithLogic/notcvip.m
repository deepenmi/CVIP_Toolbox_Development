function not = notcvip(a)
    if isa(a,'double')
        a=uint8(a);
    end
    not = bitcmp(a);
end
