funcprot(0);

img = double(imread('img\lena.png'));

test = [ 10, 20, 30; 40,50,60];

function [v] = norme_gradient(img,i,j, sizeX, sizeY, cst)
    if i < sizeX then
        a = img(i+1, j);
    else
        a = 0;
    end
    
    if i > 1 then
        b = img(i-1, j);
    else
        b = 0;
    end

    if j < sizeY then
        c = img(i, j+1);
    else
        c = 0;
    end

    if j > 1 then
        d = img(i, j-1);
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
    [sizeX, sizeY] = size(img);

    M = zeros(sizeY, sizeX);

    for j = 1 :sizeY
        for i = 1:sizeX
            //disp(i,j);
            M(j,i) = norme_gradient(img, j, i, sizeX, sizeY, cst);
        end
    end



endfunction

function [Ub] = bruite(U, s)
// Description of bruite(U, s)
    Ub = rand(size(U,1), size(U,2), 'normal');
    Ub = Ub * s + U;
endfunction

function [Uimp] = bruite_imp(U, p)
// Description of bruite(U, s)
I = rand(U);
//disp(I);
Uimp = 255*rand(U).*(I <p/100) + (I>=p/100).*U;
endfunction

function [A] = im_extract(U,i,j,f)
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


A = U(ydebut: yfin, xdebut: xfin);

endfunction


function [M] = im_moyenne(U,f)
// Description of im_moyenne(U, f)
nb = (2*f +1)^2;
[sizeY, sizeX] = size(U);
M = zeros(U);
for i = 1:sizeY
    for j = 1:sizeX
        M(i,j) = sum(im_extract(U, i, j , f))/nb;
    end
end
endfunction

function [M] = im_median(U,f)
    // Description of im_median(U, f)
    nb = (2*f +1)^2;
    [sizeY, sizeX] = size(U);
    M = zeros(U);
    for i = 1:sizeY
        for j = 1:sizeX
            M(i,j) = median(im_extract(U, i, j , f));
        end
    end
    endfunction
    



//z=im_contour(img, 0.2);
//imshow(z/255);

y = bruite_imp(img, 10)/255;
//imshow(y);

res = im_moyenne(y,2);

