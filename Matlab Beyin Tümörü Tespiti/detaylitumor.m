function varargout = detaylitumor(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @detaylitumor_OpeningFcn, ...
                   'gui_OutputFcn',  @detaylitumor_OutputFcn, ...
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


% --- Executes just before anamenu is made visible.
function detaylitumor_OpeningFcn(hObject, eventdata, handles, varargin)

% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mainmenu (see VARARGIN)

% Choose default command line output for mainmenu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mainmenu wait for user response (see UIRESUME)
% uiwait(handles.figure1);




% --- Outputs from this function are returned to the command line.
function varargout = detaylitumor_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in anamenu.
function anamenu_Callback(hObject, eventdata, handles)
mainmenu();
closereq();



% --- Executes on button press in secim.
function secim_Callback(hObject, eventdata, handles)
global img1 img2
[path,nofile]=imgetfile();
if nofile
    msgbox(sprintf('Resim Bulunamad�!'),'Hata','Warning');
    return
end
img1=imread(path);
img1=im2double(img1);
img2=img1;
axes(handles.axes1);
imshow(img1);
axes(handles.axes1);



axes(handles.axes6);
imhist(img1);
axes(handles.axes6);
imggri=rgb2gray(img1);

axes(handles.axes5);
imshow(imggri,'Colormap',jet(255));
axes(handles.axes5);


% --- Executes on button press in Cikis.
function Cikis_Callback(hObject, eventdata, handles)
closereq(); 


% --- Executes on button press in tumor.
function tumor_Callback(hObject, eventdata, handles)
global img1
% --- Medyan Filtresi.


axes(handles.axes7);
if size(img1,3)==3
    img1=rgb2gray(img1);
    Seg=medfilt2(img1);
end
K=medfilt2(img1);
axes(handles.axes7);
imshow(K);
% --- K��e Alg�lama.

axes(handles.axes8);
C=double(K);
for i=1:size(C,1)-2
    for j=1:size(C,2)-2
        Gx=((2*C(i+2,j+1)+C(i+2,j)+C(i+2,j+2))-(2*C(i,j+1)+C(i,j)+C(i,j+2)));
        Gy=((2*C(i+1,j+2)+C(i,j+2)+C(i+2,j+2))-(2*C(i+1,j)+C(i,j)+C(i+2,j)));
        B(i,j)=sqrt(Gx.^2+Gy.^2);
    end
end
axes(handles.axes8);
imshow(B);


% --- Segmentasyon .



% --- T�m�r Alg�lama .

axes(handles.axes10);

bw=im2bw(img1, 0.7);
label=bwlabel(bw);

stats=regionprops(label,'solidity','Area');
density=[stats.Solidity];
area=[stats.Area];
high_dense_area=density>0.5;
max_area = max(area(high_dense_area));
tumor_label=find(area == max_area);
tumor=ismember(label,tumor_label);

se=strel('square',5);
tumor = imdilate(tumor,se);

Bound=bwboundaries(tumor,'noholes');

imshow(img1);
hold on

for i=1:length(Bound)
    plot(Bound{i}(:,2), Bound{i} (:,1),'y','linewidth',1.75)
end
hold off
axes(handles.axes10);

axes(handles.axes9);
imshow(tumor,[]);
axes(handles.axes9);

axes(handles.axes3);
imshow(bw);
axes(handles.axes3);



