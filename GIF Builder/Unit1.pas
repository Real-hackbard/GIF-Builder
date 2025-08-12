unit Unit1;

interface

uses
  GIFImage,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Spin, ComCtrls, XPMan;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ImageAnimate: TImage;
    Panel3: TPanel;
    ButtonAnimate: TButton;
    ButtonSave: TButton;
    SaveDialog: TSaveDialog;
    BitBtn1: TBitBtn;
    SpinEdit1: TSpinEdit;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBoxPalette: TCheckBox;
    CheckBoxCrop: TCheckBox;
    CheckBoxMerge: TCheckBox;
    CheckBox4: TCheckBox;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label3: TLabel;
    RadioGroup2: TRadioGroup;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BitBtn2: TBitBtn;
    Shape1: TShape;
    Panel4: TPanel;
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    procedure ButtonAnimateClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBoxMergeClick(Sender: TObject);
    procedure CheckBoxCropClick(Sender: TObject);
    procedure CheckBoxPaletteClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}
function MainDir : string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

function CountFilesInFolder(AFolder: String; AMask: String): Integer;
var tmp1: TSearchRec; //Record in den FindFirst/Findnext die Daten schreibt
    ergebnis: Integer; //zur Zwischenspeicherung von Findfirst und FindNext
begin
  result := 0;
  if (AFolder <> '') then //wenn kein Pfad angegeben wurde könn wir gleich abbrechen...
  begin
    if AFolder[length(AFolder)] <> '\' then AFolder := AFolder + '\'; //wenn AFolder keinen '\' am Ende hat fügen wir einen an weil "c:\mypfad" + "*.*" schief gehen würde
    ergebnis := FindFirst(AFolder + AMask, faArchive + faReadOnly + faHidden + faSysFile, tmp1); //erste Datei aus Verzeichnis holen. Ergebnis <> 0 = nix gefunden
    while ergebnis = 0 do //solange wie Dateien gefunden wurden weitersuchen
    begin
     Inc(result); //anzahl der gefundenen Dateien erhöhen
     ergebnis := FindNext(tmp1); //nächste Datei suchen
     while ((tmp1.Name = '.') or (tmp1.Name = '..')) and (ergebnis <> 0) do ergebnis := FindNext(tmp1); //Filtert "." und ".." raus. Eigentlich unnötig weil wir Ordner nicht berücksichtigen, aber bleibt drin falls wir die Attribute mal wieder um "faDirectory" erweitern
    end;
    FindClose(tmp1); //Am Ende der Auflistung sollten wir das SearchRec wieder freigeben
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //Panel3.DoubleBuffered := true;
  //Panel4.DoubleBuffered := true;
  include(GIFImageDefaultDrawOptions, goDirectDraw);
end;

procedure TForm1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ImageAnimate.Picture.Graphic := nil;
end;

procedure TForm1.ButtonAnimateClick(Sender: TObject);
var
  GIF			: TGIFImage;
  i			: integer;
  OptimizeOptions	: TGIFOptimizeOptions;

  function TransparentIndex(GIF: TGIFSubImage): byte;
  begin
    // Use the lower left pixel as the transparent color
    Result := GIF.Pixels[0, GIF.Height-1];
  end;

  function AddBitmap(GIF: TGIFImage; Source: TGraphic; Transparent: boolean): integer;
  var
    Ext			: TGIFGraphicControlExtension;
    LoopExt		: TGIFAppExtNSLoop;
  begin
    ImageAnimate.Picture.Assign(Source);
    ImageAnimate.Update;

    Result := GIF.Add(Source);

    if (Result = 0) then
    begin
      LoopExt := TGIFAppExtNSLoop.Create(GIF.Images[Result]);
      LoopExt.Loops := SpinEdit2.Value;
      GIF.Images[Result].Extensions.Add(LoopExt);
    end;

    Ext := TGIFGraphicControlExtension.Create(GIF.Images[Result]);
    Ext.Delay := SpinEdit1.Value;
    if CheckBox1.Checked = true then begin
    if (Transparent) then
    begin
      Ext.Transparent := True;
      Ext.TransparentColorIndex := TransparentIndex(GIF.Images[Result]);
      end;
    end;

    if CheckBox1.Checked = true then begin
    Ext.Transparent := True;
    Ext.TransparentColorIndex := TransparentIndex(GIF.Images[Result]);
    end;

    GIF.Images[Result].Extensions.Add(Ext);
  end;

begin
  Screen.Cursor := crHourGlass;
  if ScrollBox1.ControlCount = 0 then begin
  Beep;
  MessageDlg('Load Image Frames to Animate',mtInformation, [mbOK], 0);
  Exit;
  end;

  Screen.Cursor := crHourGlass;
  try
    GIF := TGIFImage.Create;

    case RadioGroup1.ItemIndex of
      0 :  GIF.ColorReduction := rmNetscape;
      1 :  GIF.ColorReduction := rmMonochrome;
      2 :  GIF.ColorReduction := rmGrayScale;
      3 :  GIF.ColorReduction := rmWindowsGray;
      4 :  GIF.ColorReduction := rmWindows256;
      5 :  GIF.ColorReduction := rmWindows20;
      6 :  GIF.ColorReduction := rmQuantize;
      7 :  GIF.ColorReduction := rmQuantizeWindows;
      8 :  GIF.ColorReduction := rmPalette;
      9 :  GIF.ColorReduction := rmNone;
    end;

    case RadioGroup2.ItemIndex of
    0 : GIF.DitherMode := dmNearest;
    1 : GIF.DitherMode := dmSierra;
    2 : GIF.DitherMode := dmStucki;
    3 : GIF.DitherMode := dmBurkes;
    4 : GIF.DitherMode := dmSteveArche;
    end;

    if RadioButton1.Checked then GIF.Compression := gcLZW;
    if RadioButton2.Checked then GIF.Compression := gcRLE;

    try
      for i := 0 to ScrollBox1.ControlCount-1 do
        AddBitmap(GIF,
          TImage(ScrollBox1.Controls[i]).Picture.Graphic,
          (i > 0));

    if CheckBoxPalette.Checked then GIF.OptimizeColorMap;
    if CheckBoxMerge.Checked then include(OptimizeOptions, ooMerge);
    if CheckBoxCrop.Checked then include(OptimizeOptions, ooCrop);
    if CheckBox4.Checked then include(OptimizeOptions, ooCleanUp);

      ImageAnimate.Picture.Assign(GIF);

      if CheckBox2.Checked = true then begin
      ImageAnimate.Stretch := true; end else begin
      ImageAnimate.Stretch := false; end;
    finally
      GIF.Free;
    end;
    ButtonSave.Enabled := True;
  finally
    Screen.Cursor := crDefault;
  end;
  Screen.Cursor := crDefault;
  StatusBar1.SetFocus;
end;

procedure TForm1.ButtonSaveClick(Sender: TObject);
begin
  SaveDialog.DefaultExt := GraphicExtension(TGraphicClass(ImageAnimate.Picture.Graphic.ClassType));
  SaveDialog.Filter :=  GraphicFilter(TGraphicClass(ImageAnimate.Picture.Graphic.ClassType));
  if (SaveDialog.Execute) then
    ImageAnimate.Picture.SaveToFile(SaveDialog.Filename);
    StatusBar1.SetFocus;
end;

procedure TForm1.ImageClick(Sender: TObject);
begin
  ImageAnimate.Picture.Assign(TImage(Sender).Picture);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var Pic : TImage;
    i, b, m, k : integer;
begin
  Screen.Cursor := crHourGlass;
   Button1.Click;
   m := 0;
   StatusBar1.Panels[1].Text :=
   IntToStr(CountFilesinFolder(MainDir + '\bmp', '*.bmp'));

   b := StrToInt(StatusBar1.Panels[1].Text) - 1;

   for i := 0 to b do
   begin
   Pic := TImage.Create(ScrollBox1);
   Pic.Parent := ScrollBox1;

   with pic do
    begin
      //Parent := ScrollBoxSource;
      Left := m;
      Pic.Picture.Bitmap.LoadFromFile(MainDir + 'bmp\' + IntToStr(i) + '.bmp');
      m := m + Pic.Picture.Bitmap.Width + 5;
      k := Pic.Picture.Bitmap.Height;

      Pic.Height := k;
      Pic.Width := m;
    end;

   //Pic.Picture.Bitmap.LoadFromFile(MainDir + 'bmp\' + IntToStr(i) + '.bmp');

   if CheckBox3.Checked = true then
   begin
    Pic.Align := alClient;
    Pic.Canvas.Font.Name := 'MS Sans Serif';
    Pic.Canvas.Font.Size := 8;
    Pic.Canvas.Font.Color := clWhite;
    Pic.Canvas.Brush.Style := bsClear;
    //Pic.Canvas.Brush.Color := clBlack;
    Pic.Canvas.TextOut(10, 10, Edit1.Text);
   end;

   StatusBar1.Panels[1].Text := IntToStr(i);
   Application.ProcessMessages;
   end;
   Screen.Cursor := crDefault;
   StatusBar1.SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
var ii : integer;
begin
  for ii := ScrollBox1.ControlCount - 1 downto 0 do begin
  ScrollBox1.Controls[ii].Free;
  end;
  ImageAnimate.Picture.Graphic := nil;
  StatusBar1.SetFocus;
  ButtonSave.Enabled := false;
end;

procedure TForm1.CheckBoxMergeClick(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBoxCropClick(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBoxPaletteClick(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked = true then begin
  SpinEdit1.Enabled := true;
  SpinEdit2.Enabled := true;
  Edit1.Enabled := true;
  Shape1.Enabled := true;
  BitBtn2.Enabled := true;
  Label4.Enabled := true;
  Label5.Enabled := true;

  end else begin

  end;

  StatusBar1.SetFocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ButtonAnimate.Click;
  Sleep(500);
  Screen.Cursor := crDefault;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ButtonAnimate.Click;
  Sleep(500);
  Screen.Cursor := crDefault;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ButtonAnimate.Click;
  Sleep(500);
  Screen.Cursor := crDefault;
end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog1.Execute then Shape1.Brush.Color := ColorDialog1.Color;
end;

end.

