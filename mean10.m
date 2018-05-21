clc;
clear all;
close all;
tic
for z=1:10

 ch=input('enter patient no.'); %selection of patient
 [wm gm csf]=choice(ch); %choice function returns wm, gm and csf matrix for selected patient 

if ch==1
    wm_1=wm;
    gm_1=gm;
    csf_1=csf;
end

if ch==2
    wm_2=wm;
    gm_2=gm;
    csf_2=csf;
end

if ch==3
    wm_3=wm;
    gm_3=gm;
    csf_3=csf;
end

if ch==4
    wm_4=wm;
    gm_4=gm;
    csf_4=csf;
end
if ch==5
    wm_5=wm;
    gm_5=gm;
    csf_5=csf;
end
if ch==6
    wm_6=wm;
    gm_6=gm;
    csf_6=csf;
end
if ch==7
    wm_7=wm;
    gm_7=gm;
    csf_7=csf;
end
if ch==8
    wm_8=wm;
    gm_8=gm;
    csf_8=csf;
end
if ch==9
    wm_9=wm;
    gm_9=gm;
    csf_9=csf;
end
if ch==10
    wm_10=wm;
    gm_10=gm;
    csf_10=csf;
end

end
 
 for cnt=1:20
     wmmean(cnt)=(wm_1(cnt)+wm_2(cnt)+wm_3(cnt)+wm_4(cnt)+wm_5(cnt)+wm_6(cnt)+wm_7(cnt)+wm_8(cnt)+wm_9(cnt)+wm_10(cnt))/10;  %mean matrix of wm 
 end
 
 for cnt=1:20
     gmmean(cnt)=(gm_1(cnt)+gm_2(cnt)+gm_3(cnt)+gm_4(cnt)+gm_5(cnt)+gm_6(cnt)+gm_7(cnt)+gm_8(cnt)+gm_9(cnt)+gm_10(cnt))/10; %mean matrix of gm
 end
 
 for cnt=1:20
     csfmean(cnt)=(csf_1(cnt)+csf_2(cnt)+csf_3(cnt)+csf_4(cnt)+csf_5(cnt)+csf_6(cnt)+csf_7(cnt)+csf_8(cnt)+csf_9(cnt)+csf_10(cnt))/10; %mean matrix of csf
 end
 
 toc