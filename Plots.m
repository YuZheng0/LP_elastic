clear;

T1=readtable("/Users/yuzheng/Desktop/LP_elastic_data/Tri_origpositions400_10000.txt");
x0=T1.Var1;
y0=T1.Var2;


T2=readtable("/Users/yuzheng/Desktop/LP_elastic_data/Tri_positions400_10000.txt");
x=T2.Var1;
y=T2.Var2;
%fx=T2.Var3;
%fy=T2.Var4;
%f=T2.Var5;
T3=readtable("/Users/yuzheng/Desktop/LP_elastic_data/Tri_test2.txt");
x1=T3.Var1;
y1=T3.Var2;
T4=readtable("/Users/yuzheng/Desktop/LP_elastic_data/Tri_cellposition.txt");
xcell=T4.Var1;
ycell=T4.Var2;

displacementX=x-x0;
displacementY=y-y0;
r = sqrt(x0.^2 + y0.^2);
displacement=(displacementX.* x+displacementY.* y)./r;
%quiver(x,y,fx,fy,'-r');
scatter(x,y,30,displacement);
colormap(jet);
colorbar
axis square;

figure;
displacementX1=x1-x0;
displacementY1=y1-y0;

displacementX2 = displacementX + displacementX1;
displacementY2 = displacementY + displacementY1;

displacementhh = sqrt(displacementX1.^2+displacementY1.^2);
displacement2=(displacementX2.* x0+displacementY2.* y0)./r;
scatter(x,y,30,displacement2);
colormap(jet)
colorbar;
axis square;

