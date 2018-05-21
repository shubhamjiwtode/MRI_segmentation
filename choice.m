function [wm_a gm_a csf_a] = choice(ch)
if ch==1
wm1=0;
gm1=0;
csf1=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\aged\1\1_' num2str(h,'%02d') '.png'];

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
    title('white matter1');
    wm_area1=bwarea(uint8(imgfi1));
    wm1(h)=wm_area1;

end
for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter1');
    gm_area1=bwarea(uint8(imgfi2));
    gm1(h)=gm_area1;

end
for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf1');
    csf_area1=bwarea(uint8(imgfi3));
    csf1(h)=csf_area1;
end

end

figure(4),
plot(wm1);
title('white matter1');
figure(5),
plot(gm1);
title('gray matter1');
figure(6),
plot(csf1);
title('csf1');

wm_a=wm1;
gm_a=gm1;
csf_a=csf1;
end


if ch==2
    
wm2=0;
gm2=0;
csf2=0;

for p=1:20
      
 y = ['C:\Users\ADMIN\Documents\MATLAB\aged\2\2_' num2str(p,'%02d') '.png'];

img=imread(y);

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
        if TF(a,1)==BF(b,1)
            temp1=BF(b,:);
            BF(b,:)=BF(a,:);
            BF(a,:)=temp1;
        end
    end
end

figure(7),
imshow(img,[])
MF=BF;
for i=1
    imgfi1=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(8),imshow(imgfi1,[])
    title('white matter2');
    wm_area2=bwarea(uint8(imgfi1));
    wm2(p)=wm_area2;

end
for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(9),imshow(imgfi2,[])
    title('gray matter2');
    gm_area2=bwarea(uint8(imgfi2));
    gm2(p)=gm_area2;

end
for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(10),imshow(imgfi3,[])
    title('csf2');
    csf_area2=bwarea(uint8(imgfi3));
    csf2(p)=csf_area2;
end

end


figure(11),
plot(wm2);
title('white matter2');
figure(12),
plot(gm2);
title('gray matter2');
figure(13),
plot(csf2);
title('csf2');


wm_a=wm2;
gm_a=gm2;
csf_a=csf2;

end


%patient No.3 selected
if ch==3
wm3=0;
gm3=0;
csf3=0;


for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\aged\3\3_' num2str(h,'%02d') '.png'];

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
    title('white matter3');
    wm_area3=bwarea(uint8(imgfi1));
    wm3(h)=wm_area3;

end
for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter3');
    gm_area3=bwarea(uint8(imgfi2));
    gm3(h)=gm_area3;

end
for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf3');
    csf_area3=bwarea(uint8(imgfi3));
    csf3(h)=csf_area3;
end

end

figure(4),
plot(wm3);
title('white matter3');
figure(5),
plot(gm3);
title('gray matter3');
figure(6),
plot(csf3);
title('csf3');

wm_a=wm3;
gm_a=gm3;
csf_a=csf3;
end


%patient No.4 selected
if ch==4
wm4=0;
gm4=0;
csf4=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\aged\4\4_' num2str(h,'%02d') '.png'];

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
    title('white matter4');
    wm_area4=bwarea(uint8(imgfi1));
    wm4(h)=wm_area4;

end
for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter4');
    gm_area4=bwarea(uint8(imgfi2));
    gm4(h)=gm_area4;

end
for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf4');
    csf_area4=bwarea(uint8(imgfi3));
    csf4(h)=csf_area4;
end

end

figure(4),
plot(wm4);
title('white matter4');
figure(5),
plot(gm4);
title('gray matter4');
figure(6),
plot(csf4);
title('csf4');

wm_a=wm4;
gm_a=gm4;
csf_a=csf4;
end


%patient No.5 selected
if ch==5
wm5=0;
gm5=0;
csf5=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\aged\5\5_' num2str(h,'%02d') '.png'];

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
    title('white matter5');
    wm_area5=bwarea(uint8(imgfi1));
    wm5(h)=wm_area5;

end
for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter5');
    gm_area5=bwarea(uint8(imgfi2));
    gm5(h)=gm_area5;

end
for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf5');
    csf_area5=bwarea(uint8(imgfi3));
    csf5(h)=csf_area5;
end

end

figure(4),
plot(wm5);
title('white matter5');
figure(5),
plot(gm5);
title('gray matter5');
figure(6),
plot(csf5);
title('csf5');

wm_a=wm5;
gm_a=gm5;
csf_a=csf5;
end



%patient No.6 selected
if ch==6
wm6=0;
gm6=0;
csf6=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\aged\6\6_' num2str(h,'%02d') '.png'];

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
    title('white matter6');
    wm_area6=bwarea(uint8(imgfi1));
    wm6(h)=wm_area6;

end
for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter6');
    gm_area6=bwarea(uint8(imgfi2));
    gm6(h)=gm_area6;

end
for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf6');
    csf_area6=bwarea(uint8(imgfi3));
    csf6(h)=csf_area6;
end

end

figure(4),
plot(wm6);
title('white matter6');
figure(5),
plot(gm6);
title('gray matter6');
figure(6),
plot(csf6);
title('csf6');

wm_a=wm6;
gm_a=gm6;
csf_a=csf6;
end



%patient No.7 selected
if ch==7
wm7=0;
gm7=0;
csf7=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\aged\7\7_' num2str(h,'%02d') '.png'];

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
    title('white matter7');
    wm_area7=bwarea(uint8(imgfi1));
    wm7(h)=wm_area7;

end
for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter7');
    gm_area7=bwarea(uint8(imgfi2));
    gm7(h)=gm_area7;

end
for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf7');
    csf_area7=bwarea(uint8(imgfi3));
    csf7(h)=csf_area7;
end

end

figure(4),
plot(wm7);
title('white matter7');
figure(5),
plot(gm7);
title('gray matter7');
figure(6),
plot(csf7);
title('csf7');

wm_a=wm7;
gm_a=gm7;
csf_a=csf7;
end


%patient No.8 selected
if ch==8
wm8=0;
gm8=0;
csf8=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\aged\8\8_' num2str(h,'%02d') '.png'];

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
    title('white matter8');
    wm_area8=bwarea(uint8(imgfi1));
    wm8(h)=wm_area8;

end
for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter8');
    gm_area8=bwarea(uint8(imgfi2));
    gm8(h)=gm_area8;

end
for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf8');
    csf_area8=bwarea(uint8(imgfi3));
    csf8(h)=csf_area8;
end

end

figure(4),
plot(wm8);
title('white matter8');
figure(5),
plot(gm8);
title('gray matter8');
figure(6),
plot(csf8);
title('csf8');

wm_a=wm8;
gm_a=gm8;
csf_a=csf8;
end


%patient No.9 selected
if ch==9
wm9=0;
gm9=0;
csf9=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\aged\9\9_' num2str(h,'%02d') '.png'];

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
    title('white matter9');
    wm_area9=bwarea(uint8(imgfi1));
    wm9(h)=wm_area9;

end
for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter9');
    gm_area9=bwarea(uint8(imgfi2));
    gm9(h)=gm_area9;

end
for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf9');
    csf_area9=bwarea(uint8(imgfi3));
    csf9(h)=csf_area9;
end

end

figure(4),
plot(wm9);
title('white matter9');
figure(5),
plot(gm9);
title('gray matter9');
figure(6),
plot(csf9);
title('csf9');

wm_a=wm9;
gm_a=gm9;
csf_a=csf9;
end


%patient No.10 selected
if ch==10
wm10=0;
gm10=0;
csf10=0;

for h=1:20
      
 z = ['C:\Users\ADMIN\Documents\MATLAB\aged\10\10_' num2str(h,'%02d') '.png'];

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
    title('white matter10');
    wm_area10=bwarea(uint8(imgfi1));
    wm10(h)=wm_area10;

end
for i=2
    imgfi2=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi2,[])
    title('gray matter10');
    gm_area10=bwarea(uint8(imgfi2));
    gm10(h)=gm_area10;

end
for i=3
    imgfi3=reshape(MF(i,:,:),size(img,1),size(img,2));
    figure(3),imshow(imgfi3,[])
    title('csf10');
    csf_area10=bwarea(uint8(imgfi3));
    csf10(h)=csf_area10;
end

end

figure(4),
plot(wm10);
title('white matter10');
figure(5),
plot(gm10);
title('gray matter10');
figure(6),
plot(csf10);
title('csf10');

wm_a=wm10;
gm_a=gm10;
csf_a=csf10;
end
