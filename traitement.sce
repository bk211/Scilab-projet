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
    sizeX = size(img,1);
    sizeY = size(img,2);

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


//z=im_contour(img, 0.2);
//imshow(z/255);

y = bruite(img, 50);
imshow(y/255);