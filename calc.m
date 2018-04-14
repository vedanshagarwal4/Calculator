function varargout = calc(varargin)
% CALC MATLAB code for calc.fig
%      CALC, by itself, creates a new CALC or raises the existing
%      singleton*.
%
%      H = CALC returns the handle to a new CALC or the handle to
%      the existing singleton*.
%
%      CALC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALC.M with the given input arguments.
%
%      CALC('Property','Value',...) creates a new CALC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calc

% Last Modified by GUIDE v2.5 13-Mar-2018 15:29:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calc_OpeningFcn, ...
                   'gui_OutputFcn',  @calc_OutputFcn, ...
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


% --- Executes just before calc is made visible.
function calc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calc (see VARARGIN)

% Choose default command line output for calc
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calc wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calc_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ed1_Callback(hObject, eventdata, handles)
% hObject    handle to ed1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed1 as text
%        str2double(get(hObject,'String')) returns contents of ed1 as a double



% --- Executes during object creation, after setting all properties.
function ed1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x3;
x3=1;
x1=str2num(get(handles.ans,'String'));
set(handles.ans,'String',0);



% --- Executes on button press in sub.
function sub_Callback(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x3;
x3=2;
x1=str2num(get(handles.ans,'String'));
set(handles.ans,'String',0);


% --- Executes on button press in mul.
function mul_Callback(hObject, eventdata, handles)
% hObject    handle to mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x3;
x3=3;
x1=str2num(get(handles.ans,'String'));
set(handles.ans,'String',0);


% --- Executes on button press in div.
function div_Callback(hObject, eventdata, handles)
% hObject    handle to div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x3;
x3=4;
x1=str2num(get(handles.ans,'String'));
set(handles.ans,'String',0);



function ed2_Callback(hObject, eventdata, handles)
% hObject    handle to ed2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed2 as text
%        str2double(get(hObject,'String')) returns contents of ed2 as a double


% --- Executes during object creation, after setting all properties.
function ed2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ans_Callback(hObject, eventdata, handles)
% hObject    handle to ans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ans as text
%        str2double(get(hObject,'String')) returns contents of ans as a double


% --- Executes during object creation, after setting all properties.
function ans_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2num(get(handles.ans,'String'));
val2=(val1*10)+7;
val2=num2str(val2);
set(handles.ans,'String',val2);


% --- Executes on button press in eight.
function eight_Callback(hObject, eventdata, handles)
% hObject    handle to eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2num(get(handles.ans,'String'));
val2=(val1*10)+8;
val2=num2str(val2);
set(handles.ans,'String',val2);


% --- Executes on button press in nine.
function nine_Callback(hObject, eventdata, handles)
% hObject    handle to nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2num(get(handles.ans,'String'));
val2=(val1*10)+9;
val2=num2str(val2);
set(handles.ans,'String',val2);


% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2num(get(handles.ans,'String'));
val2=(val1*10)+3;
val2=num2str(val2);
set(handles.ans,'String',val2);


% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2num(get(handles.ans,'String'));
val2=(val1*10)+2;
val2=num2str(val2);
set(handles.ans,'String',val2);


% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2num(get(handles.ans,'String'));
val2=(val1*10)+1;
val2=num2str(val2);
set(handles.ans,'String',val2);


% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2num(get(handles.ans,'String'));
val2=(val1*10)+6;
val2=num2str(val2);
set(handles.ans,'String',val2);


% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2num(get(handles.ans,'String'));
val2=(val1*10)+5;
val2=num2str(val2);
set(handles.ans,'String',val2);


% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2num(get(handles.ans,'String'));
val2=(val1*10)+4;
val2=num2str(val2);
set(handles.ans,'String',val2);


% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2num(get(handles.ans,'String'));
val2=(val1*10);
val2=num2str(val2);
set(handles.ans,'String',val2);


% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x2;
x2=str2num(get(handles.ans,'String'));
global x3;
if x3==1
    var3=x1+x2;
    var3=num2str(var3);
    set(handles.ans,'String',var3);
elseif x3==2
    var3=x1-x2;
    var3=num2str(var3);
    set(handles.ans,'String',var3);
elseif x3==3
    var3=x1*x2;
    var3=num2str(var3);
    set(handles.ans,'String',var3);
elseif x3==4
    var3=x1/x2;
    var3=num2str(var3);
    set(handles.ans,'String',var3);   
elseif x3==5
    var3=mod(x1,x2);
    var3=num2str(var3);
    set(handles.ans,'String',var3);
end
    


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x2;
global x3;
x1=0;
x2=0;
x3=0;
v=0;
set(handles.ans,'String',v);


% --- Executes on button press in root.
function root_Callback(hObject, eventdata, handles)
% hObject    handle to root (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x3;
x3=5;
x1=str2num(get(handles.ans,'String'));
var3=x1^0.5;
var3=num2str(var3);
set(handles.ans,'String',var3);




% --- Executes on button press in square.
function square_Callback(hObject, eventdata, handles)
% hObject    handle to square (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x3;
x3=6;
x1=str2num(get(handles.ans,'String'));
var3=x1*x1;
var3=num2str(var3);
set(handles.ans,'String',var3);


% --- Executes on button press in rec.
function rec_Callback(hObject, eventdata, handles)
% hObject    handle to rec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x3;
x3=7;
x1=str2num(get(handles.ans,'String'));
var3=1/x1;
var3=num2str(var3);
set(handles.ans,'String',var3);



% --- Executes on button press in per.
function per_Callback(hObject, eventdata, handles)
% hObject    handle to per (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in mod.
function mod_Callback(hObject, eventdata, handles)
% hObject    handle to mod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x3;
x3=5;
x1=str2num(get(handles.ans,'String'));
set(handles.ans,'String',0);
