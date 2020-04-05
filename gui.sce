// This GUI file is generated by guibuilder version 4.2.1
//////////
f=figure('figure_position',[241,417],'figure_size',[756,480],'auto_resize','on','background',[33],'figure_name','Figure n°%d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.Pbutton_Image_Load=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7046154,0.8877273,0.1712179,0.0486364],'Relief','default','SliderStep',[0.01,0.1],'String','Load image','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_Image_Load','Callback','ImageLoad_callback(handles)')
handles.PButton_Save_Button=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7046154,0.8104545,0.1712179,0.0486364],'Relief','default','SliderStep',[0.01,0.1],'String','Image save','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','PButton_Save_Button','Callback','SaveButton_callback(handles)')
handles.windows= newaxes();handles.windows.margins = [ 0 0 0 0];handles.windows.axes_bounds = [0.0176282,0.0318182,0.6650641,0.9204545];
handles.Pbutton_apply_contour=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7046154,0.715,0.2360256,0.0622727],'Relief','default','SliderStep',[0.01,0.1],'String','contour','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_apply_contour','Callback','Pbutton_apply_contour_callback(handles)')
handles.edit=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7046154,0.2959091,0.1828205,0.0631818],'Relief','default','SliderStep',[0.01,0.1],'String','0','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','edit','Callback','')
handles.Pbutton_bruiter=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7046154,0.6418182,0.21,0.05],'Relief','default','SliderStep',[0.01,0.1],'String','bruiter','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_bruiter','Callback','Pbutton_bruiter_callback(handles)')
handles.Pbutton_reset=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.894359,0.8854545,0.0889744,0.0440909],'Relief','default','SliderStep',[0.01,0.1],'String','Reset','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_reset','Callback','Pbutton_reset_callback(handles)')
handles.Pbutton_bruite_imp=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7076923,0.5568182,0.2012821,0.0477273],'Relief','default','SliderStep',[0.01,0.1],'String','bruiter impulsionnel','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_bruite_imp','Callback','Pbutton_bruite_imp_callback(handles)')
handles.Pbutton_im_moyenne=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7102564,0.4840909,0.1935897,0.0454545],'Relief','default','SliderStep',[0.01,0.1],'String','filtre moyenne','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_im_moyenne','Callback','Pbutton_im_moyenne_callback(handles)')
handles.Pbutton_im_median=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7128205,0.4068182,0.1871795,0.0431818],'Relief','default','SliderStep',[0.01,0.1],'String','filtre median','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Pbutton_im_median','Callback','Pbutton_im_median_callback(handles)')


f.visible = "on";


//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////


function action_on(img)

    for 1: size(img,3)


endfunction



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
disp(fn);
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

endfunction


function Pbutton_im_moyenne_callback(handles)
//Write your callback for  Pbutton_im_moyenne  here

endfunction


function Pbutton_im_median_callback(handles)
//Write your callback for  Pbutton_im_median  here

endfunction


