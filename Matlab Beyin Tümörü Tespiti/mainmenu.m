function varargout = mainmenu(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mainmenu_OpeningFcn, ...
                   'gui_OutputFcn',  @mainmenu_OutputFcn, ...
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


% --- Executes just before mainmenu is made visible.
function mainmenu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mainmenu (see VARARGIN)

% Choose default command line output for mainmenu
handles.output = hObject;
axes(handles.axes1);
imshow('Your Cover Image Path ');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mainmenu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mainmenu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in hizliTumor.
function hizliTumor_Callback(hObject, eventdata, handles)
hizlitumor();
closereq();



% --- Executes on button press in detayliTumor.
function detayliTumor_Callback(hObject, eventdata, handles)
detaylitumor();
closereq();


% --- Executes on button press in Cikis.
function Cikis_Callback(hObject, eventdata, handles)
closereq(); 
