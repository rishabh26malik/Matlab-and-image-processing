I=ones(300,600,3);
count=0;
for i=30:110
    for j=1:(1+count)
        I(i,j,1:2)=0;
    end
    count=count+2;
end
count=0;
for i=190:270
    for j=(160-count):-1:1
        I(i,j,1)=0;
        I(i,j,2)=0;
    end
    count=count+2;
end
count=258;
for i=200:300
    for j=260:-1:(1+count)
        I(i,j,1)=0;
        I(i,j,2)=0;
    end
    count=count-2;
end
count=0;
for i=1:110
    for j=(40+count):260
        I(i,j,1)=0;
        I(i,j,2)=0;
    end
    count=count+2;
end
count=0;
for i=1:110
    for j=(560-count):-1:340
        I(i,j,1)=0;
        I(i,j,2)=0;
    end
    count=count+2;
end
count=599;
for i=30:110
    for j=600:-1:(1+count)
        I(i,j,1)=0;
        I(i,j,2)=0;
    end
    count=count-2;
end
count=0;
for i=200:300
    for j=340:(340+count)
        I(i,j,1)=0;
        I(i,j,2)=0;
    end
    count=count+2;
end
count=0;
for i=190:270
    for j=(440+count):600
        I(i,j,1)=0;
        I(i,j,2)=0;
    end
    count=count+2;
end

count=0;
for i=30:120
    for j=1:(1+count)
        %I(i,j,1:2)=0;
    end
    for k=(i-29):(i-9)
            I(k,j,2:3)=0;
    end
    count=count+2;
end
count=0;
for i=30:120
    for j=2:(2+count)
        %I(i,j,1:2)=0;
    end
    for k=(i-29):(i-9)
         I(k,j,2:3)=0;
    end
    count=count+2;
end

count=258;
for i=200:300
    for j=260:-1:(1+count)
        %I(i,j,1)=0;
        %I(i,j,2)=0;
    end
    count=count-2;
    if(j>230)
        continue;
    end
    for k=(i-29):(i-9)
        I(k,j,2:3)=0;
    end
end

count=257;
for i=200:300
    for j=259:-1:(1+count)
        %I(i,j,1)=0;
        %I(i,j,2)=0;
    end
    count=count-2;
    if(j>230)
        continue;
    end
    for k=(i-29):(i-9)
        I(k,j,2:3)=0;
    end
end

I(120:180,:,2:3)=0;
I(:,270:330,2:3)=0;
figure,imshow(I);