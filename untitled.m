function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 30-Jun-2019 17:27:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in modellist.
function modellist_Callback(hObject, eventdata, handles)
 
    v = get(handles.modellist ,'Value'); 
        if v == 1
            a = 1;
            setappdata (0,'HH',a);
        elseif v == 2
            b = 2;
            setappdata (0,'FN',b);
        elseif v == 3
            c = 3;
            setappdata (0,'ML',c);
        elseif v == 4
            d = 4;
            setappdata (0,'LIF',d);
        elseif v == 5
            e = 5;
            setappdata (0,'GIF',e);
        elseif v == 6
            f = 6;
            setappdata (0,'oneD',f);
        end
        







function modellist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to modellist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in inputlist.
function inputlist_Callback(hObject, eventdata, handles)
%{
v1 = get(handles.inputlist,'Value'); 
if v1 == 1
    g = 1;
    getappdata (0,'pulse',g);
elseif v1 == 2
    h = 2;
    getappdata (0,'ramp',h);
elseif v1 == 3
    i = 3;
    getappdata (0,'step',i);
end
%}






function inputlist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputlist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ampvaltext_Callback(hObject, eventdata, handles)
% hObject    handle to ampvaltext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ampvaltext as text
%        str2double(get(hObject,'String')) returns contents of ampvaltext as a double


% --- Executes during object creation, after setting all properties.
function ampvaltext_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampvaltext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function timevaltext_Callback(hObject, eventdata, handles)
% hObject    handle to timevaltext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of timevaltext as text
%        str2double(get(hObject,'String')) returns contents of timevaltext as a double


% --- Executes during object creation, after setting all properties.
function timevaltext_CreateFcn(hObject, eventdata, handles)
% hObject    handle to timevaltext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gradevaltext_Callback(hObject, eventdata, handles)
% hObject    handle to gradevaltext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gradevaltext as text
%        str2double(get(hObject,'String')) returns contents of gradevaltext as a double


% --- Executes during object creation, after setting all properties.
function gradevaltext_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gradevaltext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.text5,'string',ampvalue);


function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in inputbutton.
function inputbutton_Callback(hObject, eventdata, handles)
% hObject    handle to inputbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
av = str2double (get (handles.ampvaltext,'string'));
setappdata (0,'ampval',av);
timing = str2double (get (handles.timevaltext,'string'));
setappdata (0,'timeval',timing);
grade = str2double (get (handles.gradevaltext,'string'));
setappdata (0,'gradeval',grade);
set (handles.text8,'string',av);
set (handles.text9,'string',grade);
set (handles.text10,'string',timing);



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uhh = str2double (get (handles.text6,'string'));
setappdata (0,'uhh',uhh);



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ufn = str2double (get (handles.edit8,'string'));
setappdata (0,'ufn',ufn);
wfn = str2double (get (handles.edit9,'string'));
setappdata (0,'wfn',wfn);



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uml = str2double (get (handles.text10,'string'));
setappdata (0,'uml',uml);
wml = str2double (get (handles.text11,'string'));
setappdata (0,'wml',wml);
typeml = str2double (get (handles.text13,'string'));
setappdata (0,'typeml',typeml);


function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uif = str2double (get (handles.edit14,'string'));
setappdata (0,'uif',uif);



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ueif = str2double (get (handles.edit15,'string'));
setappdata (0,'ueif',ueif);



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uod = str2double (get (handles.edit16,'string'));
setappdata (0,'uod',uod);
wod = str2double (get (handles.edit17,'string'));
setappdata (0,'wod',wod);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla;
v = get(handles.modellist ,'Value');
if v==1
    I=str2double (get (handles.ampvaltext,'string'));
    u0=str2double (get (handles.edit6,'string'));
    eqns = ['dV/dt = ',num2str(I),'+@current+@B+@C; {iNa}@current; {iM}@B;{iK}@C; V(0)=',num2str(u0),';'];
    data = dsSimulate(eqns, 'tspan', [0 200]);
    axes(handles.axes1);
    plot(data.time, data.pop1_V);
    xlabel('t(ms)');
    ylabel('u(t) (mv)');
end
if v==2
    v2 = get(handles.inputlist ,'Value');
    if v2==1
        I=str2double (get (handles.ampvaltext,'string'));
T=str2double (get (handles.timevaltext,'string'));
u0=str2double (get (handles.edit8,'string'))/1000;
w0=str2double (get (handles.edit9,'string'));
eqns = {
    't1 = 1; t2=0.08; R=0.5; b0=0.7; b1=1; K=0;'
    ['if (t>', num2str(T),')(K=1);']
    ['du/dt = 1/t1*(u-1/3*u^3-w + R*(',num2str(I),'-K*',num2str(I),')); u(0)=',num2str(u0),';']
    ['dw/dt = t2*(b0 + b1*u -0.8*w); w(0)=',num2str(w0),';']
};
data = dsSimulate(eqns, 'tspan', [0 200]);
axes(handles.axes1);
plot(data.time, data.pop1_u);
xlabel('t(ms)');
ylabel('u(t) (v)');
scale = 20;
step=10;
jahatu = data.pop1_u(2:end)-data.pop1_u(1:end-1);
jahatw = data.pop1_w(2:end)-data.pop1_w(1:end-1);
jahatu=jahatu.*scale;
jahatw=jahatw.*scale;
axes(handles.axes4);
quiver(data.pop1_u(1:step:end-1),data.pop1_w(1:step:end-1),jahatu(1:step:end),jahatw(1:step:end),5);
xlabel('u');
ylabel('w');
title('Phase plane');
    end
    if v2==2
        m=str2double (get (handles.gradevaltext,'string'));
u0=str2double (get (handles.edit8,'string'))/1000;
w0=str2double (get (handles.edit9,'string'));
eqns = {
    't1 = 1; t2=0.08; R=0.5; b0=0.7; b1=1;'
    ['du/dt = 1/t1*(u-1/3*u^3-w + R*',num2str(m),'*t); u(0)=',num2str(u0),';']
    ['dw/dt = t2*(b0 + b1*u -0.8*w); w(0)=',num2str(w0),';']
};
data = dsSimulate(eqns, 'tspan', [0 200]);
axes(handles.axes1);
plot(data.time, data.pop1_u);
xlabel('t(ms)');
ylabel('u(t) (v)');
scale = 20;
step=10;
jahatu = data.pop1_u(2:end)-data.pop1_u(1:end-1);
jahatw = data.pop1_w(2:end)-data.pop1_w(1:end-1);
jahatu=jahatu.*scale;
jahatw=jahatw.*scale;
axes(handles.axes4);
quiver(data.pop1_u(1:step:end-1),data.pop1_w(1:step:end-1),jahatu(1:step:end),jahatw(1:step:end),5);
xlabel('u');
ylabel('w');
title('Phase plane');
    end
    if v2==3
        I=str2double (get (handles.ampvaltext,'string'));
u0=str2double (get (handles.edit8,'string'))/1000;
w0=str2double (get (handles.edit9,'string'));
eqns = {
    't1 = 1; t2=0.08; R=0.5; b0=0.7; b1=1;'
    ['du/dt = 1/t1*(u-1/3*u^3-w + R*',num2str(I),'); u(0)=',num2str(u0),';']
    ['dw/dt = t2*(b0 + b1*u -0.8*w); w(0)=',num2str(w0),';']
};
data = dsSimulate(eqns, 'tspan', [0 200]);
axes(handles.axes1);
plot(data.time, data.pop1_u);
xlabel('t(ms)');
ylabel('u(t) (v)');
scale = 20;
step=10;
jahatu = data.pop1_u(2:end)-data.pop1_u(1:end-1);
jahatw = data.pop1_w(2:end)-data.pop1_w(1:end-1);
jahatu=jahatu.*scale;
jahatw=jahatw.*scale;
axes(handles.axes4);
quiver(data.pop1_u(1:step:end-1),data.pop1_w(1:step:end-1),jahatu(1:step:end),jahatw(1:step:end),5);
xlabel('u');
ylabel('w');
title('Phase plane');
    end
end
if v==3
    cla;
    v2 = get(handles.inputlist ,'Value');
    if v2==1
        amp=str2double (get (handles.ampvaltext,'string'));
        uInitial=str2double (get (handles.edit10,'string'));
        wInitial=str2double (get (handles.edit11,'string'));
        model_type = str2double (get (handles.edit13,'string'));
        Input_type = 2; %pulse
        period = str2double (get (handles.timevaltext,'string'));
        
    end
    if v2==2
        amp=str2double (get (handles.gradevaltext,'string'));
        uInitial=str2double (get (handles.edit10,'string'));
        wInitial=str2double (get (handles.edit11,'string'));
        model_type = str2double (get (handles.edit13,'string'));
        Input_type = 3; %ramp
        
    end
    if v2==3
        amp=str2double (get (handles.ampvaltext,'string'));
        uInitial=str2double (get (handles.edit10,'string'));
        wInitial=str2double (get (handles.edit11,'string'));
        model_type = str2double (get (handles.edit13,'string'));
        Input_type = 1; %step
        
    end
    counter = 1;
VoltageRange = linspace(-75,75,31);

    if model_type == 2
    u1  = -1.2;
    u2 = 18;
    u3 = 2;
    u4 = 30;
    gCa = 4.4;  
    gK = 8;   
    gL = 2;
    VCa = 120;
    VK = -84;
    VL=-60;
    C = 20;
    TawW = 25;
    else
    u1  = -1.2;
    u2 = 18;
    u3 = 12;
    u4 = 17;
    gCa = 4.4;  
    gK = 8;   
    gL = 2;
    VCa = 120;
    VK = -84;
    VL=-60;
    C = 20;
    TawW = 15;
    end

    m0 = @(V) (1 + tanh((V-u1)/u2) )/2;
    w0 = @(V) (1 + tanh((V-u3)/u4) )/2;
    Taw    = @(V) cosh((V-u3)/(2*u4)) / TawW;

    I = @(V,w) -gCa*m0(V).*(V-VCa)-gK*w.*(V-VK)-gL*(V-VL);

    if Input_type==1
            eq = @(t,y) [ (I(y(1),y(2))+ amp)/C; Taw(y(1)).*(w0(y(1))-y(2)) ];
    elseif Input_type==2
            eq = @(t,y) [ (I(y(1),y(2))+ amp.*(heaviside(t) - ...
                heaviside(t-period)))/C; Taw(y(1)).*(w0(y(1))-y(2)) ];
    else
            eq = @(t,y) [ (I(y(1),y(2))+ amp.*t)/C; Taw(y(1)).*(w0(y(1))-y(2)) ];
    end

    T = 200;
    InitialCondition = [uInitial wInitial];
    [t Y] = ode45(eq, [0 T], InitialCondition);

    axes(handles.axes1);%plot u(t)
    plot(t, Y(:,1) );
    legend('u(t)')

    axes(handles.axes4); %ploting phase plane
    plot(Y(:,1), Y(:,2) ,'->');
    hold on;

    for j = VoltageRange 
     w(counter) = fsolve(@(w) I(j,w)+amp, 0);
     counter = counter + 1;
    end

    plot(VoltageRange, w,'r-');              
    plot(VoltageRange, w0(VoltageRange),'g-');  
    title('w(t) vs u(t)');
    axis([-75 75 -0.4 0.5]);
    legend('Trajectory', 'du/dt = 0', 'dw/dt = 0');
end

if v==4
    v2 = get(handles.inputlist ,'Value');
    if v2==1
        amp=str2double (get (handles.ampvaltext,'string'));
        uInitial=str2double (get (handles.edit14,'string'));
        Input_type = 2; %pulse
        T = str2double (get (handles.timevaltext,'string'));
    end
    if v2==2
        amp=str2double (get (handles.gradevaltext,'string'));
        uInitial=str2double (get (handles.edit14,'string'));
        Input_type = 3; %ramp
    end
    if v2==3
        amp=str2double (get (handles.ampvaltext,'string'));
        uInitial=str2double (get (handles.edit14,'string'));
        Input_type = 1; %step
    end
    I=amp;
    u0=uInitial;
    if Input_type == 1 
    eqns = {
        'Taw = 10;urest = -65;  R=12; uth = -50;'
        'if (u>uth)(u = urest);'
        ['du/dt = (urest - u)/Taw + R*',num2str(I),'/Taw; u(0)=',num2str(u0),';'   ]
    };
    elseif Input_type == 2

    eqns = {
        'Taw = 10;urest = -65;  R=12; uth = -50; K=0;'
        'if (u>uth)(u = urest);'
        ['if (t>', num2str(T),')(K=1);']
        ['du/dt = (urest - u)/Taw + R*(',num2str(I),'-K*',num2str(I),')/Taw; u(0)=',num2str(u0),';' ]
    };
    else

    eqns = {
        'Taw = 10;urest = -65;  R=12; uth = -50;'
        'if (u>uth)(u = urest);'
        ['du/dt = (urest - u)/Taw + R*(',num2str(I),')*t/Taw; u(0)=',num2str(u0),';' ]

    };
    end
    data = dsSimulate(eqns, 'tspan', [0 100]);
    axes(handles.axes1);
    plot(data.time, data.pop1_u);
    xlabel('t(ms)');
    ylabel('u(t) (v)');
end

if v==5
    v2 = get(handles.inputlist ,'Value');
    if v2==1
        amp=str2double (get (handles.ampvaltext,'string'));
        uInitial=str2double (get (handles.edit15,'string'));
        Input_type = 2; %pulse
        T = str2double (get (handles.timevaltext,'string'));
    end
    if v2==2
        amp=str2double (get (handles.gradevaltext,'string'));
        uInitial=str2double (get (handles.edit15,'string'));
        Input_type = 3; %ramp
    end
    if v2==3
        amp=str2double (get (handles.ampvaltext,'string'));
        uInitial=str2double (get (handles.edit15,'string'));
        Input_type = 1; %step
    end
    I=amp;
    u0=uInitial;
    if Input_type == 1 

    eqns = {
        'Taw=10; R=18;  vrh=-50.6 ;delta=2 ; urest=-70.6; uth=-40.4'
        'if (u>uth)(u = urest);'
        ['du/dt = 1/Taw*(-(u-urest)+delta*exp((u-vrh)/delta)+R*',num2str(I),'); u(0)=',num2str(u0),';']
    };
    elseif Input_type == 2

    eqns = {
        'Taw=10; R=18;  vrh=-50.6 ;delta=2 ; urest=-70.6; uth=-40.4; K=0'
        'if (u>uth)(u = urest);'
        ['if (t>', num2str(T),')(K=1);']
        ['du/dt = 1/Taw*(-(u-urest)+delta*exp((u-vrh)/delta)+R*(',num2str(I),'-K*',num2str(I),')); u(0)=',num2str(u0),';']
    };
    else

    eqns = {
        'Taw=10; R=18;  vrh=-50.6 ;delta=2 ; urest=-70.6; uth=-40.4'
        'if (u>uth)(u = urest);'
        ['du/dt = 1/Taw*(-(u-urest)+delta*exp((u-vrh)/delta)+R*',num2str(I),'*t); u(0)=',num2str(u0),';']
    };
    end
    data = dsSimulate(eqns, 'tspan', [0 100]);
    axes(handles.axes1);
    plot(data.time, data.pop1_u);
    xlabel('t(ms)');
    ylabel('u(t) (v)');
end

if v==6
    v2 = get(handles.inputlist ,'Value');
    if v2==1
        amp=str2double (get (handles.ampvaltext,'string'));
        uInitial=str2double (get (handles.edit16,'string'));
        wInitial=str2double (get (handles.edit17,'string'));
        Input_type = 2; %pulse
        T = str2double (get (handles.timevaltext,'string'));
    end
    if v2==2
        amp=str2double (get (handles.gradevaltext,'string'));
        uInitial=str2double (get (handles.edit16,'string'));
        wInitial=str2double (get (handles.edit17,'string'));
        Input_type = 3; %ramp
    end
    if v2==3
        amp=str2double (get (handles.ampvaltext,'string'));
        uInitial=str2double (get (handles.edit16,'string'));
        wInitial=str2double (get (handles.edit17,'string'));
        Input_type = 1; %step
    end
    u0=uInitial/1000;
    w0=wInitial/1000;
    I=amp;
    %step
    if Input_type == 1
    eqns = {
        'eps=0.04; R=1; b0=0.7; b1=1;'
        ['du/dt = (u-1/3*u^3-w + R*',num2str(I),'); u(0)=',num2str(u0),';']
        ['dw/dt = eps*(b0 + b1*u -0.8*w); w(0)=',num2str(w0),';']
    };
    %pulse
    elseif Input_type == 2
    eqns = {
        'eps=0.04; R=1; b0=0.7; b1=1; K=0;'
        ['if (t>', num2str(T),')(K=1);']
        ['du/dt = (u-1/3*u^3-w + R*(',num2str(I),'-K*',num2str(I),')); u(0)=',num2str(u0),';']
        ['dw/dt = eps*(b0 + b1*u -0.8*w); w(0)=',num2str(w0),';']
    };
    else
    %ramp
    eqns = {
        'eps=0.04; R=1; b0=0.7; b1=1;'
        ['du/dt = (u-1/3*u^3-w + R*(',num2str(I),')*t); u(0)=',num2str(u0),';']
        ['dw/dt = eps*(b0 + b1*u -0.8*w); w(0)=',num2str(w0),';']
    };
    end
    data = dsSimulate(eqns, 'tspan', [0 200]);
    axes(handles.axes1);
    plot(data.time, data.pop1_u);
    xlabel('t(ms)');
    ylabel('u(t) (mv)');
    scale = 20;
    step=10;
    jahatu = data.pop1_u(2:end)-data.pop1_u(1:end-1);
    jahatw = data.pop1_w(2:end)-data.pop1_w(1:end-1);
    jahatu=jahatu.*scale;
    jahatw=jahatw.*scale;
    axes(handles.axes4);
    quiver(data.pop1_u(1:step:end-1),data.pop1_w(1:step:end-1),jahatu(1:step:end),jahatw(1:step:end),5);
    xlabel('u');
    ylabel('w');
    title('Phase plane');
end

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = get(handles.modellist ,'Value');
if t==1
    
end
if t==2
    
end
if t==3
    
end
if t==4
    
end
if t==5
    
end
if t==6
    
end
