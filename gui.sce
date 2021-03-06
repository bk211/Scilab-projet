// This GUI file is generated by guibuilder version 4.2.1
//////////
f=figure('figure_position',[451,378],'figure_size',[756,480],'auto_resize','on','background',[33],'figure_name','Figure n°%d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.Pbutton_Image_Load=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6340541,0.8877273,0.1360256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','Load image','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_Image_Load','Callback','ImageLoad_callback(handles)')
handles.PButton_Save_Button=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6340541,0.7429798,0.1360256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','Image save','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','PButton_Save_Button','Callback','SaveButton_callback(handles)')
handles.windows= newaxes();handles.windows.margins = [ 0 0 0 0];handles.windows.axes_bounds = [0.0176282,0.0318182,0.6050641,0.9204545];
handles.Pbutton_apply_contour=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6340541,0.6706061,0.1060256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','contour','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_apply_contour','Callback','Pbutton_apply_contour_callback(handles)')
handles.edit=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6346154,0.0759091,0.1828205,0.0631818],'Relief','default','SliderStep',[0.01,0.1],'String','0','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','edit','Callback','')
handles.Pbutton_bruiter=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6340541,0.5982323,0.0960256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','bruiter','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_bruiter','Callback','Pbutton_bruiter_callback(handles)')
handles.Pbutton_reset=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6340541,0.8153536,0.0860256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','Reset','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_reset','Callback','Pbutton_reset_callback(handles)')
handles.Pbutton_bruite_imp=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6340541,0.5258586,0.1860256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','bruiter impulsionnel','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_bruite_imp','Callback','Pbutton_bruite_imp_callback(handles)')
handles.Pbutton_im_moyenne=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6340541,0.4534848,0.1560256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','filtre moyenne','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_im_moyenne','Callback','Pbutton_im_moyenne_callback(handles)')
handles.Pbutton_im_median=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6340541,0.3811111,0.1360256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','filtre median','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_im_median','Callback','Pbutton_im_median_callback(handles)')
handles.Pbutton_extension_lineaire=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6340541,0.3087373,0.1760256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','extension lineaire','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_extension_lineaire','Callback','Pbutton_extension_lineaire_callback(handles)')
handles.Pbutton_seuillage=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.6340541,0.2363636,0.1060256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','seuillage','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_seuillage','Callback','Pbutton_seuillage_callback(handles)')
handles.Pbutton_changement_echelle=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7898179,0.894797,0.2024934,0.0463636],'Relief','default','SliderStep',[0.01,0.1],'String','changement echelle ','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_changement_echelle','Callback','Pbutton_changement_echelle_callback(handles)')
handles.Pbutton_histogramme=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7945946,0.8204545,0.1837838,0.0454545],'Relief','default','SliderStep',[0.01,0.1],'String','histogramme','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_histogramme','Callback','Pbutton_histogramme_callback(handles)')


f.visible = "on";


//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////


exec("traitement.sce");





function ImageLoad_callback(handles)
//Write your callback for  ImageLoad  here
fn = uigetfile('*');
S  = imread(fn);

imshow(S);


//Save image to pass to another function
handles.S = S;
handles.fn = fn;
handles = resume(handles);

endfunction


function Pbutton_reset_callback(handles)
//Write your callback for  Pbutton_reset  here    
S  = imread(handles.fn);
imshow(S);


//Save image to pass to another function
handles.S = S;
handles = resume(handles);

    
endfunction

function SaveButton_callback(handles)
//Write your callback for  SaveButton  here
fn = uiputfile('*');
imwrite(handles.S, fn);
endfunction



function Pbutton_apply_contour_callback(handles)
//Write your callback for  Pbutton_apply_traitement  here
val = 0.5;
S = im_contour(double(handles.S), val)/255;
imshow(S);

handles.S = S;
handles = resume(handles);

endfunction

function Pbutton_bruiter_callback(handles)
//Write your callback for  Pbutton_bruiter  here
val = strtod(handles.edit.string);
S = bruite(double(handles.S), val)/255;

imshow(S);

handles.S = S;
handles = resume(handles);
endfunction


function Pbutton_bruite_imp_callback(handles)
//Write your callback for  Pbutton_bruite_imp  here
val = strtod(handles.edit.string);
S = bruite_imp(double(handles.S), val)/255;
imshow(S);
handles.S = S;
handles = resume(handles);
endfunction


function Pbutton_im_moyenne_callback(handles)
//Write your callback for  Pbutton_im_moyenne  here
f = strtod(handles.edit.string);
S = im_moyenne(double(handles.S), f);
imshow(S);
handles.S = S;
handles = resume(handles);
endfunction


function Pbutton_im_median_callback(handles)
//Write your callback for  Pbutton_im_median  here
f = strtod(handles.edit.string);
S = im_median(double(handles.S), f);
imshow(S);
handles.S = S;
handles = resume(handles);

endfunction


function Pbutton_extension_lineaire_callback(handles)
//Write your callback for  Pbutton_extension_lineaire  here
S = extension_lineaire(double(handles.S))/255;
imshow(S);
handles.S = S;
handles = resume(handles);
endfunction


function Pbutton_seuillage_callback(handles)
//Write your callback for  Pbutton_seuillage  here
seuil = strtod(handles.edit.string);
S = seuillage(double(handles.S), seuil)/255;
imshow(S);
handles.S = S;
handles = resume(handles);
endfunction


function Pbutton_changement_echelle_callback(handles)
//Write your callback for  Pbutton_changement_echelle  here
seuil = strtod(handles.edit.string);
S = changement_echelle(double(handles.S), seuil, seuil)/255;
imshow(S);
handles.S = S;
handles = resume(handles);
endfunction


function Pbutton_histogramme_callback(handles)
//Write your callback for  Pbutton_histogramme  here
P = histogramme(double(handles.S));
clf();
if(size(P,3)) == 3 then
    plot(P(:,:,1),'ro-');
    plot(P(:,:,2),'cya+');
    plot(P(:,:,3),'--mo');
else
    plot(P);
end
endfunction

