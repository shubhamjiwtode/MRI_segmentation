function [wm_a gm_a csf_a] = choices(ch)
if ch==11
wm11=0;
gm11=0;
csf11=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\experiment\mean5\11\11_' num2str(h,'%02d') '.png'];

img=imread(z);

img=rgb2gray(img);

ncluster=4;
MF = SFCM2D(img,ncluster);
TF=MF;
BF=MF;

temp=0;
for l=1:4
    for m=l+1:4
        
        if TF(l,1)>TF(m,1)
            temp=TF(m,1);
            TF(m,1)=TF(l,1);
            TF(l,1)=temp;
        end
    end
end

temp1=[];
for a=1:4
    for b=1:4
        if  TF(a,1)==BF(b,1)
            temp1=BF(b,:);
            BF(b,:)=BF(a,:);
            BF(a,:)=temp1;
        end
    end
end

figure(1),
imshow(img,[])
MF=BF;
for i=1
    imgfi1=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(2),imshow(imgfi1,[])
    title('white matter11');
    wm_area11=bwarea(uint8(imgfi1));
    wm11(h)=wm_area11;
end

for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter11');
    gm_area11=bwarea(uint8(imgfi2));
    gm11(h)=gm_area11;
end

for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf11');
    csf_area11=bwarea(uint8(imgfi3));
    csf11(h)=csf_area11;
end

end

figure(4),
plot(wm11);
title('white matter11');
figure(5),
plot(gm11);
title('gray matter11');
figure(6),
plot(csf11);
title('csf11');

wm_a=wm11;
gm_a=gm11;
csf_a=csf11;
end


if ch==12
wm12=0;
gm12=0;
csf12=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\experiment\mean5\12\12_' num2str(h,'%02d') '.png'];

img=imread(z);

img=rgb2gray(img);

ncluster=4;
MF = SFCM2D(img,ncluster);
TF=MF;
BF=MF;

temp=0;
for l=1:4
    for m=l+1:4
        
        if TF(l,1)>TF(m,1)
            temp=TF(m,1);
            TF(m,1)=TF(l,1);
            TF(l,1)=temp;
        end
    end
end

temp1=[];
for a=1:4
    for b=1:4
        if  TF(a,1)==BF(b,1)
            temp1=BF(b,:);
            BF(b,:)=BF(a,:);
            BF(a,:)=temp1;
        end
    end
end

figure(1),
imshow(img,[])
MF=BF;
for i=1
    imgfi1=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(2),imshow(imgfi1,[])
    title('white matter12');
    wm_area12=bwarea(uint8(imgfi1));
    wm12(h)=wm_area12;
end

for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter12');
    gm_area12=bwarea(uint8(imgfi2));
    gm12(h)=gm_area12;
end

for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf12');
    csf_area12=bwarea(uint8(imgfi3));
    csf12(h)=csf_area12;
end

end

figure(4),
plot(wm12);
title('white matter12');
figure(5),
plot(gm12);
title('gray matter12');
figure(6),
plot(csf12);
title('csf12');

wm_a=wm12;
gm_a=gm12;
csf_a=csf12;
end

if ch==13
wm13=0;
gm13=0;
csf13=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\experiment\mean5\13\13_' num2str(h,'%02d') '.png'];

img=imread(z);

img=rgb2gray(img);

ncluster=4;
MF = SFCM2D(img,ncluster);
TF=MF;
BF=MF;

temp=0;
for l=1:4
    for m=l+1:4
        
        if TF(l,1)>TF(m,1)
            temp=TF(m,1);
            TF(m,1)=TF(l,1);
            TF(l,1)=temp;
        end
    end
end

temp1=[];
for a=1:4
    for b=1:4
        if  TF(a,1)==BF(b,1)
            temp1=BF(b,:);
            BF(b,:)=BF(a,:);
            BF(a,:)=temp1;
        end
    end
end

figure(1),
imshow(img,[])
MF=BF;
for i=1
    imgfi1=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(2),imshow(imgfi1,[])
    title('white matter13');
    wm_area13=bwarea(uint8(imgfi1));
    wm13(h)=wm_area13;
end

for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter13');
    gm_area13=bwarea(uint8(imgfi2));
    gm13(h)=gm_area13;
end

for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf13');
    csf_area13=bwarea(uint8(imgfi3));
    csf13(h)=csf_area13;
end

end

figure(4),
plot(wm13);
title('white matter13');
figure(5),
plot(gm13);
title('gray matter13');
figure(6),
plot(csf13);
title('csf13');

wm_a=wm13;
gm_a=gm13;
csf_a=csf13;
end

if ch==14
wm14=0;
gm14=0;
csf14=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\experiment\mean5\14\14_' num2str(h,'%02d') '.png'];

img=imread(z);

img=rgb2gray(img);

ncluster=4;
MF = SFCM2D(img,ncluster);
TF=MF;
BF=MF;

temp=0;
for l=1:4
    for m=l+1:4
        
        if TF(l,1)>TF(m,1)
            temp=TF(m,1);
            TF(m,1)=TF(l,1);
            TF(l,1)=temp;
        end
    end
end

temp1=[];
for a=1:4
    for b=1:4
        if  TF(a,1)==BF(b,1)
            temp1=BF(b,:);
            BF(b,:)=BF(a,:);
            BF(a,:)=temp1;
        end
    end
end

figure(1),
imshow(img,[])
MF=BF;
for i=1
    imgfi1=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(2),imshow(imgfi1,[])
    title('white matter14');
    wm_area14=bwarea(uint8(imgfi1));
    wm14(h)=wm_area14;
end

for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter14');
    gm_area14=bwarea(uint8(imgfi2));
    gm14(h)=gm_area14;
end

for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf14');
    csf_area14=bwarea(uint8(imgfi3));
    csf14(h)=csf_area14;
end

end

figure(4),
plot(wm14);
title('white matter14');
figure(5),
plot(gm14);
title('gray matter14');
figure(6),
plot(csf14);
title('csf14');

wm_a=wm14;
gm_a=gm14;
csf_a=csf14;
end

if ch==15
wm15=0;
gm15=0;
csf15=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\experiment\mean5\15\15_' num2str(h,'%02d') '.png'];

img=imread(z);

img=rgb2gray(img);

ncluster=4;
MF = SFCM2D(img,ncluster);
TF=MF;
BF=MF;

temp=0;
for l=1:4
    for m=l+1:4
        
        if TF(l,1)>TF(m,1)
            temp=TF(m,1);
            TF(m,1)=TF(l,1);
            TF(l,1)=temp;
        end
    end
end

temp1=[];
for a=1:4
    for b=1:4
        if  TF(a,1)==BF(b,1)
            temp1=BF(b,:);
            BF(b,:)=BF(a,:);
            BF(a,:)=temp1;
        end
    end
end

figure(1),
imshow(img,[])
MF=BF;
for i=1
    imgfi1=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(2),imshow(imgfi1,[])
    title('white matter15');
    wm_area15=bwarea(uint8(imgfi1));
    wm15(h)=wm_area15;
end

for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter15');
    gm_area15=bwarea(uint8(imgfi2));
    gm15(h)=gm_area15;
end

for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf15');
    csf_area15=bwarea(uint8(imgfi3));
    csf15(h)=csf_area15;
end

end

figure(4),
plot(wm15);
title('white matter15');
figure(5),
plot(gm15);
title('gray matter15');
figure(6),
plot(csf15);
title('csf15');

wm_a=wm15;
gm_a=gm15;
csf_a=csf15;
end

