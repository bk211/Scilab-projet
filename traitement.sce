funcprot(0);

img = double(imread('img\lena.png'));
co = imread("img\4.2.04.tiff");

test = [ 10, 20, 30; 40,50,60];

function [v] = norme_gradient(img,i,j, sizeX, sizeY, sizeZ,cst)
    if i < sizeX then
        a = img(i+1, j, sizeZ);
    else
        a = 0;
    end
    
    if i > 1 then
        b = img(i-1, j, sizeZ);
    else
        b = 0;
    end

    if j < sizeY then
        c = img(i, j+1, sizeZ);
    else
        c = 0;
    end

    if j > 1 then
        d = img(i, j-1, sizeZ);
    else
        d = 0;
    end
    //disp(typeof(a))
    //disp(typeof(b))
    //mprintf("a= %d, b = %d, c =%d, d=%d \n", a,b,c,d);
    v = cst * sqrt( (a-b)**2 + (c-d)**2);
    //mprintf("v = %f\n", v);
endfunction



function [M] = im_contour(img, cst)
    [sizeX, sizeY, sizeZ] = size(img);
    M = zeros(sizeY, sizeX,sizeY);

for k = 1 :sizeZ
    for i = 1 :sizeY
        for j = 1:sizeX
            //disp(i,j);
            M(i,j, k) = norme_gradient(img, i, j, sizeX, sizeY, k, cst);
        end
    end
end
endfunction


function [Ub] = bruite(U, s)
// Description of bruite(U, s)
    Ub = rand(size(U,1), size(U,2),size(U,3), 'normal');
    Ub = Ub * s + U;
endfunction


function [Uimp] = bruite_imp(U, p)
// Description of bruite(U, s)
I = rand(U);
//disp(I);
Uimp = 255*rand(U).*(I <p/100) + (I>=p/100).*U;
endfunction

function [A] = im_extract(U,i,j,f, dim)
// Description of im_extract(U,i,j,f)
[sizeY, sizeX] = size(img);

if i - f < 1 then
    ydebut = 1;
    ydebutExtra = (i - f);
else
    ydebut = i - f;
    ydebutExtra = 0;
end
if i + f > sizeY then
    yfin = sizeY;
    yfinExtra = (i + f);
else
    yfin = i +f;
    yfinExtra = 0
end

if j - f < 1 then
    xdebut = 1
    xdebutExtra = (i - f);
else
    xdebut = j - f;
    xdebutExtra = 0;
end

if j + f > sizeX then
    xfin = sizeX;
    xfinExtra = (i +f );
else
    xfin = j + f;
    xfinExtra = 0;
end

//mprintf("%d %d %d %d \n", ydebut,yfin, xdebut, xfin);
//mprintf("%d %d %d %d", ydebutExtra, yfinExtra, xdebutExtra, xfinExtra);


A = U(ydebut: yfin, xdebut: xfin, dim);

endfunction


function [M] = im_moyenne(U,f)
// Description of im_moyenne(U, f)
nb = (2*f +1)^2;
[sizeY, sizeX, sizeZ] = size(U);
M = zeros(U);
for k = 1:sizeZ
for i = 1:sizeY
    for j = 1:sizeX
        M(i,j, k) = sum(im_extract(U, i, j , f, k))/nb;
    end
end
end
endfunction

function [M] = im_median(U,f)
    // Description of im_median(U, f)
    nb = (2*f +1)^2;
    [sizeY, sizeX, sizeZ] = size(U);
    M = zeros(U);

    for k = 1:sizeZ
    for i = 1:sizeY
        for j = 1:sizeX
            M(i,j,k) = median(im_extract(U, i, j , f, k));
        end
    end
end
endfunction

function I = extension_lineaire(U)
// Description of extension_lineaire(U)
LUT = zeros(256, size(U,3));
for k = 1 : size(U,3)
for ng = 1:256
    LUT(ng, k) = 255 * (ng - min(U(:,:,k))) / (max(U(:,:,k)) - min(U(:,:,k)));
    //mprintf("ng = %d , lut(ng) = %d\n", ng, 255 * (ng - min(U(:,:,k))) / (max(U(:,:,k)) - min(U(:,:,k))));
end
end


I = zeros(U);
for k = 1: size(U,3);
for i = 1: size(U,1)
    for j = 1:size(U,2)
        I(i,j,k) = LUT(U(i,j,k), k);
    end
end
end


endfunction

//z=im_contour(img, 0.2);
//imshow(z/255);

//y = bruite_imp(img, 30)/255;
//imshow(y);

k = extension_lineaire(img);
imshow(k/255);