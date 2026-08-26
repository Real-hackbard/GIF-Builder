unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Spin, ComCtrls, FileCtrl, Menus, ComObj,
  Jpeg, ShellApi, IniFiles, PngImage, Bmp2tiff, GIFImage, XPMan, ImgList;

type
  TForm1 = class(TForm)
    SaveDialog: TSaveDialog;
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    L1: TMenuItem;
    R1: TMenuItem;
    C1: TMenuItem;
    R2: TMenuItem;
    ColorDialog1: TColorDialog;
    ColorDialog2: TColorDialog;
    N1: TMenuItem;
    PopupMenu2: TPopupMenu;
    R3: TMenuItem;
    V1: TMenuItem;
    S1: TMenuItem;
    N2: TMenuItem;
    A1: TMenuItem;
    N3: TMenuItem;
    M1: TMenuItem;
    N4: TMenuItem;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel9: TPanel;
    GroupBox2: TGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    Image3: TImage;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Panel5: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    ProgressBar1: TProgressBar;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    Panel7: TPanel;
    ImageAnimate: TImage;
    TabSheet2: TTabSheet;
    Panel8: TPanel;
    Label3: TLabel;
    Label11: TLabel;
    ProgressBar2: TProgressBar;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Edit2: TEdit;
    BitBtn8: TBitBtn;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    RadioGroup1: TRadioGroup;
    GroupBox3: TGroupBox;
    ComboBox1: TComboBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    Panel10: TPanel;
    Image1: TImage;
    TabSheet3: TTabSheet;
    CheckBox1: TCheckBox;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label15: TLabel;
    ComboBox2: TComboBox;
    CheckBox22: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ComboBox3: TComboBox;
    CheckBoxPalette: TCheckBox;
    CheckBoxCrop: TCheckBox;
    CheckBoxMerge: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    RadioGroup2: TRadioGroup;
    CheckBox10: TCheckBox;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    ScrollBar1: TScrollBar;
    CheckBox13: TCheckBox;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    ScrollBar2: TScrollBar;
    CheckBox16: TCheckBox;
    CheckBox19: TCheckBox;
    BitBtn9: TBitBtn;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    TabSheet4: TTabSheet;
    Image2: TImage;
    Image19: TImage;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    SpinEdit4: TSpinEdit;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Label10: TLabel;
    CheckBox2: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    ImageList1: TImageList;
    F1: TMenuItem;
    N5: TMenuItem;
    W1: TMenuItem;
    P1: TMenuItem;
    Panel6: TPanel;
    Label4: TLabel;
    Label21: TLabel;
    Panel12: TPanel;
    ListBox1: TListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure R3Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBoxMergeClick(Sender: TObject);
    procedure CheckBoxCropClick(Sender: TObject);
    procedure CheckBoxPaletteClick(Sender: TObject);
    procedure CheckBox16Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure CheckBox19Click(Sender: TObject);
    procedure CheckBox20Click(Sender: TObject);
    procedure CheckBox21Click(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ListBox1DblClick(Sender: TObject);
    procedure CheckBox22Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure CheckBox24Click(Sender: TObject);
    procedure CheckBox23Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure W1Click(Sender: TObject);
  private
    { Private declarations }
    procedure OnProgress(Sender: TObject; Stage: TProgressStage;
      PercentDone: Byte; RedrawNow: Boolean; const R: TRect; const Msg: string);
    procedure WriteOptions;
    procedure ReadOptions;
    procedure UpperCaseLetter;
    procedure SortingAlpha;
    procedure SortingNum;
    procedure SortingMixed;
  public
    { Public declarations }
    StopAnimate : boolean;  // start stop animation
    procedure GIFAnimation; // create animation
  end;

var
  Form1: TForm1;
  SelectedItems: TStrings;
  TIF : TIniFile;
  X,Y : array[1..100]of real;
  Nbre, NbreNumbers : integer;

implementation

uses
  Unit2; // show the frame in original size

{$R *.DFM}
// get main dir path
function MainDir : string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm1.WriteOptions;    // ################### Options Write
var
  OPT :string;
begin
   OPT := 'Options';

   // Create the "Options" folder if it does not exist.
   if not DirectoryExists(MainDir + 'Data\Options\')
   then ForceDirectories(MainDir + 'Data\Options\');

   TIF := TIniFile.Create(MainDir + 'Data\Options\Options.ini');
   with TIF do
   begin
     WriteBool(OPT,'Watermark',CheckBox1.Checked);
     WriteBool(OPT,'Merge',CheckBoxMerge.Checked);
     WriteBool(OPT,'Crop',CheckBoxCrop.Checked);
     WriteBool(OPT,'PaletteColor',CheckBoxPalette.Checked);
     WriteBool(OPT,'CPULoad',CheckBox10.Checked);
     WriteBool(OPT,'IcoTranzparent',CheckBox16.Checked);
     WriteInteger(OPT,'ColorMapping',Combobox2.ItemIndex);
     WriteBool(OPT,'ActivateJPGCompress',CheckBox13.Checked);
     WriteInteger(OPT,'JPGCompressQuality',ScrollBar1.Position);
     WriteBool(OPT,'ActivatePNGCompress',CheckBox14.Checked);
     WriteBool(OPT,'PNGCompress',CheckBox15.Checked);
     WriteInteger(OPT,'PNGCompressQuality',ScrollBar2.Position);
     WriteInteger(OPT,'PriorityProcess',RadioGroup2.ItemIndex);
     WriteInteger(OPT,'ExportFormat',ComboBox1.ItemIndex);
     WriteInteger(OPT,'PixelFormat',RadioGroup1.ItemIndex);
     WriteBool(OPT,'GIFAnimationCenter',CheckBox5.Checked);
     WriteBool(OPT,'GIFAnimationStretch',CheckBox6.Checked);
     WriteBool(OPT,'GIFAnimationDisposal',CheckBox11.Checked);
     WriteBool(OPT,'GIFAnimationTranzparent',CheckBox7.Checked);
     WriteBool(OPT,'GIFAnimationGrayscale',CheckBox12.Checked);
     WriteInteger(OPT,'WatermarkX',SpinEdit3.Value);
     WriteInteger(OPT,'WatermarkY',SpinEdit2.Value);
     WriteString(OPT,'WatermarkMessage',Edit3.Text);
     WriteBool(OPT,'PreviewTranzparent',CheckBox3.Checked);
     WriteBool(OPT,'PreviewStretch',CheckBox4.Checked);
     WriteBool(OPT,'GIFViewTranzparent',CheckBox2.Checked);
     WriteBool(OPT,'GIFViewStretch',CheckBox8.Checked);
     WriteBool(OPT,'GIFViewCenter',CheckBox9.Checked);
     WriteInteger(OPT,'FPSDelay',SpinEdit1.Value);
     WriteInteger(OPT,'Loop',SpinEdit4.Value);
     WriteBool(OPT,'ClearExport',CheckBox19.Checked);
     WriteBool(OPT,'SaveExportFramesPath',CheckBox20.Checked);
     if CheckBox20.Checked = true then begin
     WriteString(OPT,'ExportFramesPath',Edit2.Text); end;
     WriteBool(OPT,'LoadBitmapPath',CheckBox21.Checked);

     if CheckBox21.Checked = true then
     begin
      WriteString(OPT,'LoadBitmapPathString',Edit1.Text);
     end;

     WriteBool(OPT,'CompressionMode',CheckBox22.Checked);
     WriteBool(OPT,'CompressionLZW',RadioButton1.Checked);
     WriteBool(OPT,'CompressionRLE',RadioButton2.Checked);
     WriteInteger(OPT,'ColorReduction',ComboBox3.ItemIndex);
     WriteBool(OPT,'ReduceColors',CheckBox24.Checked);
     WriteBool(OPT,'RemoveComments',CheckBox23.Checked);

     WriteBool(OPT,'Frames',F1.Checked);
     WriteBool(OPT,'WatermarkShow',W1.Checked);
     WriteBool(OPT,'Panel',P1.Checked);
     Free;
   end;
end;

procedure TForm1.ReadOptions;    // ################### Options Read
var
  OPT:string;
begin
  OPT := 'Options';
  if FileExists(MainDir + 'Data\Options\Options.ini') then
  begin
    TIF:=TIniFile.Create(MainDir + 'Data\Options\Options.ini');
    with TIF do
    begin
      CheckBox1.Checked:=ReadBool(OPT,'Watermark',CheckBox1.Checked);
      CheckBoxMerge.Checked:=ReadBool(OPT,'Merge',CheckBoxMerge.Checked);
      CheckBoxCrop.Checked:=ReadBool(OPT,'Crop',CheckBoxCrop.Checked);
      CheckBoxPalette.Checked:=ReadBool(OPT,'PaletteColor',CheckBoxPalette.Checked);
      CheckBox10.Checked:=ReadBool(OPT,'CPULOad',CheckBox10.Checked);
      CheckBox16.Checked:=ReadBool(OPT,'IcoTranzparent',CheckBox16.Checked);
      ComboBox2.ItemIndex:=ReadInteger(OPT,'ColorMapping',ComboBox2.ItemIndex);
      CheckBox13.Checked:=ReadBool(OPT,'ActivateJPGCompress',CheckBox13.Checked);
      ScrollBar1.Position:=ReadInteger(OPT,'JPGCompressQuality',ScrollBar1.Position);
      CheckBox14.Checked:=ReadBool(OPT,'ActivatePNGCompress',CheckBox14.Checked);
      CheckBox15.Checked:=ReadBool(OPT,'PNGCompress',CheckBox15.Checked);
      ScrollBar2.Position:=ReadInteger(OPT,'PNGCompressQuality',ScrollBar2.Position);
      RadioGroup2.ItemIndex:=ReadInteger(OPT,'PriorityProcess',RadioGroup2.ItemIndex);
      ComboBox1.ItemIndex:=ReadInteger(OPT,'ExportFormat',ComboBox1.ItemIndex);
      RadioGroup1.ItemIndex:=ReadInteger(OPT,'PixelFormat',RadioGroup1.ItemIndex);
      CheckBox5.Checked:=ReadBool(OPT,'GIFAnimationCenter',CheckBox5.Checked);
      CheckBox6.Checked:=ReadBool(OPT,'GIFAnimationStretch',CheckBox6.Checked);
      CheckBox11.Checked:=ReadBool(OPT,'GIFAnimationDisposal',CheckBox11.Checked);
      CheckBox7.Checked:=ReadBool(OPT,'GIFAnimationTranzparent',CheckBox7.Checked);
      CheckBox12.Checked:=ReadBool(OPT,'GIFAnimationGrayscale',CheckBox12.Checked);
      SpinEdit3.Value:=ReadInteger(OPT,'WatermarkX',SpinEdit3.Value);
      SpinEdit2.Value:=ReadInteger(OPT,'WatermarkY',SpinEdit2.Value);
      Edit3.Text:=ReadString(OPT,'WatermarkMessage',Edit3.Text);
      CheckBox3.Checked:=ReadBool(OPT,'PreviewTranzparent',CheckBox3.Checked);
      CheckBox4.Checked:=ReadBool(OPT,'PreviewStretch',CheckBox4.Checked);
      CheckBox2.Checked:=ReadBool(OPT,'GIFViewTranzparent',CheckBox2.Checked);
      CheckBox8.Checked:=ReadBool(OPT,'GIFViewStretch',CheckBox8.Checked);
      CheckBox9.Checked:=ReadBool(OPT,'GIFViewCenter',CheckBox9.Checked);
      SpinEdit1.Value:=ReadInteger(OPT,'FPSDelay',SpinEdit1.Value);
      SpinEdit4.Value:=ReadInteger(OPT,'Loop',SpinEdit4.Value);
      CheckBox19.Checked:=ReadBool(OPT,'ClearExport',CheckBox19.Checked);
      CheckBox20.Checked:=ReadBool(OPT,'SaveExportFramesPath',CheckBox20.Checked);

      if CheckBox20.Checked = true then
      begin
        Edit2.Text:=ReadString(OPT,'ExportFramesPath',Edit2.Text);
      end;

      CheckBox21.Checked:=ReadBool(OPT,'LoadBitmapPath',CheckBox21.Checked);

      if CheckBox21.Checked = true then
      begin
        Edit1.Text:=ReadString(OPT,'LoadBitmapPathString',Edit1.Text);
      end;

      CheckBox22.Checked:=ReadBool(OPT,'CompressionMode',CheckBox22.Checked);
      RadioButton1.Checked:=ReadBool(OPT,'CompressionLZW',RadioButton1.Checked);
      RadioButton2.Checked:=ReadBool(OPT,'CompressionRLE',RadioButton2.Checked);
      ComboBox3.ItemIndex:=ReadInteger(OPT,'ColorReduction',ComboBox3.ItemIndex);
      CheckBox24.Checked:=ReadBool(OPT,'ReduceColors',CheckBox24.Checked);
      CheckBox23.Checked:=ReadBool(OPT,'RemoveComments',CheckBox23.Checked);

      F1.Checked:=ReadBool(OPT,'Frames',F1.Checked);
      W1.Checked:=ReadBool(OPT,'WatermarkShow',W1.Checked);
      P1.Checked:=ReadBool(OPT,'Panel',P1.Checked);
      Free;
    end;
  end;
end;

// count files precisely
function CountFilesInFolder(AFolder: String; AMask: String): Integer;
var
  tmp1: TSearchRec;  // writes the data into the record during FindFirst/FindNext
  ergebnis: Integer; // for temporarily storing FindFirst and FindNext results
begin
  result := 0;
  if (AFolder <> '') then // If no path was specified, we can abort right away...
  begin
    { If AFolder doesn't end with a '\', we append one, because
      "c:\mypath" + "*.*" would fail. }
    if AFolder[length(AFolder)] <> '\' then AFolder := AFolder + '\';
    // Get the first file from the directory. Result <> 0 = nothing found.
    ergebnis := FindFirst(AFolder +
                          AMask,
                          faArchive +
                          faReadOnly +
                          faHidden +
                          faSysFile,
                          tmp1);

    while ergebnis = 0 do // continue searching as long as files are found
    begin
     Inc(result); // increase the number of files found
     ergebnis := FindNext(tmp1); // Search for the next file
     while ((tmp1.Name = '.') or (tmp1.Name = '..')) and (ergebnis <> 0) do ergebnis := FindNext(tmp1); //Filtert "." und ".." raus. Eigentlich unnötig weil wir Ordner nicht berücksichtigen, aber bleibt drin falls wir die Attribute mal wieder um "faDirectory" erweitern
    end;
    // At the end of the list, we should release the SearchRec again.
    FindClose(tmp1);
  end;
end;

// create the gif animation
procedure TForm1.GIFAnimation;
var
  GIF: TGIFImage;
  i	: integer;
  OptimizeOptions	: TGIFOptimizeOptions;

  function TransparentIndex(GIF: TGIFSubImage): byte;
  begin
    // Use the lower left pixel as the transparent color
    Result := GIF.Pixels[0, GIF.Height-1];
  end;

  // Add the bitmaps in order.
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
      // handles the Netscape Application Extension for animated GIF loop counts
      LoopExt := TGIFAppExtNSLoop.Create(GIF.Images[Result]);
      LoopExt.Loops := SpinEdit4.Value;
      GIF.Images[Result].Extensions.Add(LoopExt);
    end;

    // encapsulates the Graphic Control Extension (GCE) of the GIF specification standard.
    Ext := TGIFGraphicControlExtension.Create(GIF.Images[Result]);
    // set delay time in (ms) for frame animation
    Ext.Delay := SpinEdit1.Value;

    // set frames transparent
    if CheckBox2.Checked = true then
    begin
      if (Transparent) then
      begin
        Ext.Transparent := True;
        Ext.TransparentColorIndex := TransparentIndex(GIF.Images[Result]);
      end;

      Ext.Transparent := True;
      Ext.TransparentColorIndex := TransparentIndex(GIF.Images[Result]);
    end;

    GIF.Images[Result].Extensions.Add(Ext);
  end;
begin
  Screen.Cursor := crHourGlass;
  try
    // create gif access in memory
    GIF := TGIFImage.Create;

    // start stop gif animation
    if BitBtn1.Caption = 'Stop' then
    begin
      GIF.Animate := true;
    end else begin
      GIF.Animate := false;
    end;

    // set color reductions for gif graphic
    case ComboBox3.ItemIndex of
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

    // set dithermode for gif graphic
    case ComboBox2.ItemIndex of
      0 : GIF.DitherMode := dmFloydSteinberg;
      1 : GIF.DitherMode := dmNearest;
      2 : GIF.DitherMode := dmSierra;
      3 : GIF.DitherMode := dmStucki;
      4 : GIF.DitherMode := dmBurkes;
      5 : GIF.DitherMode := dmSteveArche;
    end;

    // // set compression mode
    if CheckBox22.Checked = true then
    begin
      if (RadioButton1.Checked) then GIF.Compression := gcLZW;
      if (RadioButton2.Checked) then GIF.Compression := gcRLE;
    end;

    try
      // add bitmaps frames to scrollbox
      for i := 0 to ScrollBox1.ControlCount-1 do
        AddBitmap(GIF,
          TImage(ScrollBox1.Controls[i]).Picture.Graphic, (i > 0));

      // creates a single, optimized global palette (Global Color Table)
      if (CheckBoxPalette.Checked) then GIF.OptimizeColorMap;
      OptimizeOptions := [];  // if nothing has been clicked
      // optimize and merge frames
      if (CheckBoxMerge.Checked) then include(OptimizeOptions, ooMerge);
      // crop an animated GIF programmatically
      if (CheckBoxCrop.Checked) then include(OptimizeOptions, ooCrop);
      // mapping colors to their closest representation in a palette
      if (OptimizeOptions <> []) then GIF.Optimize(OptimizeOptions, rmNone, dmNearest, 0);

      // Pass the graphic to the image component.
      ImageAnimate.Picture.Assign(GIF);
    finally
      // Enable memory access free
      GIF.Free;
    end;
    BitBtn3.Enabled := True;
  finally
    Screen.Cursor := crDefault;
  end;
end;

// This sorting puts the numbers first.
procedure TForm1.SortingAlpha;
var
  i,j : integer;
  val:string;
begin
 With  ListBox1 do
 begin
  Nbre := Items.Count-1;
   if Nbre > 2 then
   begin
     for i:=0 to  Nbre do
      for j:=i+1 to  Nbre do
       if Items.Strings[i] > Items.Strings[j] then
       begin
        val:=Items[i];
        Items[i]:=Items[j];
        Items[j]:=val ;
       end;
   end;
 end;
end;

// Numerical sorting of the identified digits
procedure TForm1.SortingNum;
var
  i,j : integer;
  val:string;
begin
 With  ListBox1 do
 begin
 Nbre := NbreNumbers-1;
   if Nbre > 1 then
   begin
     for i:=0 to  Nbre do
      for j:=i+1 to  Nbre do
       if StrToFloat(Items[i]) > StrToFloat(Items[j]) then
       begin
        val:=Items[i];
        Items[i]:=Items[j];
        Items[j]:=val ;
       end;
   end;
 end;
end;

procedure TForm1.SortingMixed;
var
  i:integer;
begin
  // Allows sorting of uppercase and lowercase letters.
  UpperCaseLetter;
  // This sorting puts the numbers first.
  SortingAlpha;
  // We are now looking for the number of digits.
  NbreNumbers:=0;

  for i:=0 to  Nbre do
   try
    StrToFloat(ListBox1.Items.Strings[i]);
     inc(NbreNumbers);
   except
    break; // We stop at the first error because the digits have run out.
   end;
  SortingNum; // Numerical sorting of the identified digits
end ;

// Allows sorting of uppercase and lowercase letters.
procedure TForm1.UpperCaseLetter;
var
  i,j,u,v : integer;
  Achar:array[0..200] of char ;
  b:String;
begin
  for i:=0 to Listbox1.Items.Count-1 do
  begin
     u:= Length(Listbox1.Items[i]) ;
      for j:=1 to u do
        b:= Listbox1.Items[i];
          for j:=1 to u do   Achar[j]:= upcase(b[j]);
            for v:=0 to u do   b[v] :=Achar[v];
              Listbox1.Items[i]:= b;
  end;
end;

// Convert bitmap pixels to Windows Metafile.
procedure BmpToWmf(BmpFile, WmfFile: string);
var
  MetaFile: TMetaFile;
  MFCanvas: TMetaFileCanvas;
  BMP: TBitmap;
begin
    MetaFile := TMetaFile.Create;
    try
      BMP := TBitmap.Create;
      try
        BMP.LoadFromFile(BmpFile);
        MetaFile.Height := BMP.Height; MetaFile.Width  := BMP.Width;
        MFCanvas := TMetafileCanvas.Create(MetaFile, 0);
        try
          MFCanvas.Draw(0, 0, BMP);
        finally
          MFCanvas.Free;
        end;
      finally
        BMP.Free;
      end;
      MetaFile.SaveToFile(WmfFile);
    finally
      MetaFile.Free;
    end;
end;

// convert bitmap pixel to windows enhanced file
function bmp2emf(const SourceFileName: TFileName): Boolean;
var
  Metafile: TMetafile;
  MetaCanvas: TMetafileCanvas;
  Bitmap: TBitmap;
begin
  Metafile := TMetaFile.Create;
  try
    Bitmap := TBitmap.Create;
    try
      Bitmap.LoadFromFile(SourceFileName);
      Metafile.Height := Bitmap.Height;
      Metafile.Width  := Bitmap.Width;
      MetaCanvas := TMetafileCanvas.Create(Metafile, 0);
      try
        MetaCanvas.Draw(0, 0, Bitmap);
      finally
        MetaCanvas.Free;
      end;
    finally
      Bitmap.Free;
    end;
    Metafile.SaveToFile(ChangeFileExt(SourceFileName, '.emf'));
  finally
    Metafile.Free;
  end;
end;

// Convert bitmap pixels to a Windows icon file.
procedure bmp2ico(Image: TImage; FileName: TFilename);
var
  Bmp: TBitmap;
  Icon: TIcon;
  ImageList: TImageList;
begin
  Bmp  := TBitmap.Create;
  Icon := TIcon.Create;
  try
    Bmp.Assign(Image.Picture);
    ImageList := TImageList.CreateSize(Bmp.Width, Bmp.Height);
    try
      // create bitmap transparent mask
      ImageList.AddMasked(Bmp, Bmp.TransparentColor);
      // get graphic from dynamicall ImageList
      ImageList.GetIcon(0, Icon);

      // set transparent mode
      if Form1.CheckBox16.Checked = true then
      begin
        Icon.Transparent := true;
      end;

      // export icon file
      Icon.SaveToFile(FileName);
    finally
      ImageList.Free; // clear ImageList from memory
    end;
  finally
    Bmp.Free;
    Icon.Free;
  end;
end;

// Convert bitmap pixels to a portable network graphic (png) file.
procedure BitmapFileToPNG(const Source, Dest: String);
var
  Bitmap: TBitmap;
  PNG: TPNGObject;
begin
  Bitmap := TBitmap.Create;
  PNG := TPNGObject.Create;
  try
    Bitmap.LoadFromFile(Source);
    PNG.Assign(Bitmap);

    // set transparent mode
    if Form1.CheckBox15.Checked = true then
    begin
      PNG.TransparentColor := clBlack;
      PNG.Transparent := true;
    end;

    // set compress level
    if Form1.CheckBox14.Checked = true then
    begin
      PNG.CompressionLevel := Form1.ScrollBar2.Position;
    end;

    // export png file
    PNG.SaveToFile(Dest);
  finally
    Bitmap.Free;
    PNG.Free;
  end
end;

// convert bitmap to jpg/jpeg
procedure Bmp2Jpeg(const BmpFileName, JpgFileName: string);
var
  Bmp: TBitmap;
  Jpg: TJPEGImage;
begin
  Bmp := TBitmap.Create;
  Jpg := TJPEGImage.Create;
  try
    Bmp.LoadFromFile(BmpFileName);
    Jpg.Assign(Bmp);

    // set compress level 0..100, for best quality take value (100)
    if Form1.CheckBox13.Checked = true then
    begin
      Jpg.CompressionQuality := Form1.ScrollBar1.Position;
      Jpg.Compress;
    end;

    // export jpg file
    Jpg.SaveToFile(JpgFileName);
  finally
    Jpg.Free;
    Bmp.Free;
  end;
end;

// deleting file  
function DeleteFile(const AFile: string): boolean;
var
 sh: SHFileOpStruct;
begin
  // clear memory
  ZeroMemory(@sh, sizeof(sh));
  with sh do
   begin
     Wnd := Application.Handle;
     wFunc := fo_Delete;
     pFrom := PChar(AFile +#0);
     fFlags := fof_Silent or fof_NoConfirmation;
   end;
 result := SHFileOperation(sh) = 0;
end;

// Check whether the loaded folder also contains bitmaps.
function DirectoryIsEmpty(Directory: string): Boolean;
var
  SR: TSearchRec;
  i: Integer;
begin
  Result := False;
  FindFirst(IncludeTrailingPathDelimiter(Directory) + '*', faAnyFile, SR);
  for i := 1 to 2 do
    if (SR.Name = '.') or (SR.Name = '..') then
      Result := FindNext(SR) <> 0;
  FindClose(SR);
end;

// Here, grayscale values are calculated for the exported frames of a GIF file.
procedure ImageGrayScale(var AnImage: TImage);
var
  JPGImage: TJPEGImage;
  BMPImage: TBitmap;
  MemStream: TMemoryStream;
begin
  BMPImage := TBitmap.Create;
  try
    BMPImage.Width  := AnImage.Picture.Bitmap.Width;
    BMPImage.Height := AnImage.Picture.Bitmap.Height;
    JPGImage := TJPEGImage.Create;
    try
      // Convert the graphic into JPEGs.
      JPGImage.Assign(AnImage.Picture.Bitmap);
      // Choose the best quality, otherwise it will be too pixelated.
      JPGImage.CompressionQuality := 100;
      // Compress the graphic to a minimum.
      JPGImage.Compress;
      // calculate in gray
      JPGImage.Grayscale := true;
      // Copy the gray JPG pixels into a bitmap format.
      BMPImage.Canvas.Draw(0, 0, JPGImage);
      // Create a memory access.
      MemStream := TMemoryStream.Create;
      try
        // Copy the bitmap graphic to the memory addresses.
        BMPImage.SaveToStream(MemStream);
        { This should be done in case a recalculation takes place and
          the memory is overwritten. }
        MemStream.Position := 0;
        { Copy the bitmap graphic from memory to the image component.
          This entire process is safer and faster than converting and
          painting the graphic within the component. }
        AnImage.Picture.Bitmap.LoadFromStream(MemStream);
        AnImage.Refresh;
      finally
        MemStream.Free; // memory release
      end;
    finally
      JPGImage.Free; // jpg release
    end;
  finally
    BMPImage.Free; // bitmap release
  end;
end;

{ Precise determination of the file size.
  This function is old and may fail in newer versions of Delphi. }
function MyGetFileSize(const Filename: string): TULargeInteger;
var 
  Find: THandle;
  Data: TWin32FindData; 
begin
  Result.QuadPart := -1;
  Find := FindFirstFile(PChar(Filename), Data); 
  if (Find <> INVALID_HANDLE_VALUE) then 
  begin 
    Result.LowPart := Data.nFileSizeLow; 
    Result.HighPart := Data.nFileSizeHigh; 
    Windows.FindClose(Find); 
  end; 
end;

// Determine the total data size of the folder.
function FolderSize(FolderName: string): Int64;
var
  fldr, fso: OleVariant;
begin
  fso := CreateOleObject('Scripting.FileSystemObject');
  fldr := fso.GetFolder(FolderName);
  result := fldr.size;
end;

// Display the progress.
procedure TForm1.OnProgress(Sender: TObject; Stage: TProgressStage;
  PercentDone: Byte; RedrawNow: Boolean; const R: TRect; const Msg: string);
begin
  if (Stage= psEnding) then
    ProgressBar2.Position := 0
  else
    ProgressBar2.Position := PercentDone;
end;

// List the files in the selected folder.
procedure ListFileDir(Path: string; FileList: TStrings);
var
  SR: TSearchRec;
begin
  if FindFirst(Path + '*.bmp', faAnyFile, SR) = 0 then
  begin
    repeat
      if (SR.Attr <> faDirectory) then
      begin
        FileList.Add(path + SR.Name);
      end;
    until
    FindNext(SR) <> 0;
    FindClose(SR);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Load the graphics for the buttons.
  ImageList1.GetBitmap(1, BitBtn1.Glyph);
  ImageList1.GetBitmap(4, BitBtn3.Glyph);
  ImageList1.GetBitmap(3, BitBtn5.Glyph);
  ImageList1.GetBitmap(4, BitBtn7.Glyph);
  ImageList1.GetBitmap(2, BitBtn8.Glyph);
  ImageList1.GetBitmap(3, BitBtn6.Glyph);
  ImageList1.GetBitmap(2, BitBtn9.Glyph);

  // Set the animation to off.
  StopAnimate := false;
  // prevent the GIF panel from flickering
  Panel1.DoubleBuffered := true;

  { serves to prevent flickering when displaying GIF animations by
    drawing the image directly to the screen without intermediate
    buffering. }
  include(GIFImageDefaultDrawOptions, goDirectDraw);

  // Enable multi-file selection in the ListBox.
  ListBox1.MultiSelect := true;
  // Select entries using the Shift key
  ListBox1.ExtendedSelect := true;
  // enable moving entries in the ListBox via drag-and-drop
  SelectedItems := TStringList.Create;
  // add a horizontal scrollbar to the ListBox
  SendMessage(ListBox1.Handle,LB_SetHorizontalExtent,1000,0);
end;

procedure TForm1.FormClose(Sender: TObject;
var
  Action: TCloseAction);
begin
  // clear all files in export folder
  if CheckBox19.Checked = true then
    DeleteFile(MainDir + 'Data\Export\*.*');

  // Clear and release all graphics and lists.
  ImageAnimate.Picture.Graphic := nil;
  Image1.Picture.Graphic := nil;
  Image2.Picture.Graphic := nil;
  SelectedItems.Free;
  // writing options
  WriteOptions;
end;

procedure TForm1.ImageClick(Sender: TObject);
begin
  ImageAnimate.Picture.Assign(TImage(Sender).Picture);
end;

// Start and stop the animation
procedure TForm1.BitBtn1Click(Sender: TObject);
var
  Pic : TImage;
  i, ii, b, m, k : integer;
begin
  // Exit if no graphic has loaded.
  if ListBox1.Items.Count = 0 then
  Begin
    Beep;
    MessageDlg('No Bitmap Files loaded',mtInformation, [mbOK], 0);
    StatusBar1.SetFocus;
    Exit;
  end;

  Screen.Cursor := crHourGlass;

  // stop an start the animation
  if BitBtn1.Caption = 'Animate' then
  begin
    ImageList1.GetBitmap(0, BitBtn1.Glyph);
    BitBtn1.Caption := 'Stop';
    BitBtn1.Glyph.Modified := True;
    BitBtn1.Repaint;
  end else begin
    BitBtn1.Caption := 'Animate';
    ImageList1.GetBitmap(1, BitBtn1.Glyph);
    BitBtn1.Glyph.Modified := True;
    BitBtn1.Repaint;
    GIFAnimation;
    StatusBar1.SetFocus;
    Exit;
  end;

   // clear the scrollbox
  for ii := ScrollBox1.ControlCount - 1 downto 0 do
  begin
    ScrollBox1.Controls[ii].Free;
  end;

  m := 0; // Set the graphic spacing to zero pixels.
  b := ListBox1.Items.Count - 1; // Count the entries.

  ProgressBar1.Position := 0;
  // Pass the number of entries as the maximum value for the progress bar.
  ProgressBar1.Max := ListBox1.Items.Count;

  for i := 1 to b do
   begin
   // Dynamically create an image component for the scroll box.
   Pic := TImage.Create(ScrollBox1);
   // Place the component in the scroll box.
   Pic.Parent := ScrollBox1;

   with pic do
    begin
      // Start at the far left with the first frame.
      Left := m;
      Pic.Picture.Bitmap.LoadFromFile(ListBox1.Items.Strings[i]);
      //Pic.Align := alClient;
      // Set a spacing of five pixels from the next frame.
      m := m + Pic.Picture.Bitmap.Width + 5;
      // Pass the frame height.
      k := Pic.Picture.Bitmap.Height;
      Pic.Height := k;
      Pic.Width := m;
    end;

    // set watermark text to gif animation
    if CheckBox1.Checked = true then
    begin
      // font color
      Pic.Canvas.Font.Color := Shape2.Brush.Color;
      // background color
      Pic.Canvas.Brush.Color := Shape1.Brush.Color;
      // set transparent
      Pic.Canvas.Brush.Style := bsClear;
      // type text to image x/y pos
      Pic.Canvas.TextOut(SpinEdit3.Value, SpinEdit2.Value, Edit3.Text);
    end;

    // count created frames
    Label2.Caption := 'Progress : ' + IntToStr(i) + ' Frames Created..';
    // display progress
    ProgressBar1.Position := i;
    // update program
    Application.ProcessMessages;
   end;

  // animate gif
  GIFAnimation;
  Label2.Caption := 'Progress : 100 %';
  ProgressBar1.Position := ProgressBar1.Max;
  StatusBar1.SetFocus;
end;

{ Perform drag-and-drop operations on ListBox items, whether for a single
  item or multiple items. }
procedure TForm1.ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  ListBox: TListBox;
  i, TargetIndex: Integer;
  SelectedItems: TStringList;
begin
  Assert(Source=Sender);
  ListBox := Sender as TListBox;
  TargetIndex := ListBox.ItemAtPos(Point(X, Y), False);
  if TargetIndex<>-1 then
  begin
    SelectedItems := TStringList.Create;
    try
      ListBox.Items.BeginUpdate;
      try
        for i := ListBox.Items.Count-1 downto 0 do
        begin
          if ListBox.Selected[i] then
          begin
            SelectedItems.AddObject(ListBox.Items[i], ListBox.Items.Objects[i]);
            ListBox.Items.Delete(i);
            if i<TargetIndex then
              dec(TargetIndex);
          end;
        end;

        for i := SelectedItems.Count-1 downto 0 do
        begin
          ListBox.Items.InsertObject(TargetIndex, SelectedItems[i], SelectedItems.Objects[i]);
          ListBox.Selected[TargetIndex] := True;
          inc(TargetIndex);
        end;
      finally
        ListBox.Items.EndUpdate;
      end;
    finally
      SelectedItems.Free;
    end;
  end;
end;

// Trigger the termination of the drag-and-drop operation to update the list box.
procedure TForm1.ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
   Accept := Source = ListBox1;
end;

// Build the GIF file with all options.
procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  if ImageAnimate.Picture.Graphic = nil then
  Begin
    Beep;
    MessageDlg('No GIF Animate found!',mtInformation, [mbOK], 0);
    StatusBar1.SetFocus;
    Exit;
  end;

  // pass a predefined file format (*.GIF)
  SaveDialog.DefaultExt := GraphicExtension(TGraphicClass(ImageAnimate.Picture.Graphic.ClassType));
  SaveDialog.Filter :=  GraphicFilter(TGraphicClass(ImageAnimate.Picture.Graphic.ClassType));
  if (SaveDialog.Execute) then
    ImageAnimate.Picture.SaveToFile(SaveDialog.Filename);
  StatusBar1.SetFocus;
end;

// loading a GIF file to export the frames.
procedure TForm1.BitBtn6Click(Sender: TObject);
var
  GIF	: TGIFImage;
begin
  if OpenDialog1.Execute then
  begin
    // Create memory access for the GIF file.
    GIF := TGIFImage.Create;
      try
        // reading in the frames
        GIF.OnProgress := OnProgress;
        // loading the frames into the GIF component
        GIF.LoadFromFile(OpenDialog1.FileName);
        // Counting the individual frames contained in the GIF file.
        StatusBar1.Panels[11].Text := IntToStr(GIF.Images.Count);
        // Pass the graphic to the image component.
        Image1.Picture.Assign(GIF);
    finally
      GIF.Free;  // free up memory again
    end;

    // Determine the file size of the GIF.
    StatusBar1.Panels[7].Text := IntToStr( MyGetFileSize(OpenDialog1.FileName).QuadPart div 1000) + ' kb';
    StatusBar1.Panels[9].Text := ExtractFileName(OpenDialog1.FileName);
  end;
  StatusBar1.SetFocus;
end;

// Exporting GIF frames from a GIF file
procedure TForm1.BitBtn7Click(Sender: TObject);
var
  GIF	 : TGIFImage;
  Bmp	 : TBitmap;
  i : integer;
begin
  // Exit if no GIF file is loaded.
  if Image1.Picture.Graphic = nil then
  Begin
    Beep;
    MessageDlg('No GIF animation File loaded',mtInformation, [mbOK], 0);
    StatusBar1.SetFocus;
    Exit;
  end;

  // Exit if there is no destination to save.
  if not DirectoryExists(Edit2.Text) then
  begin
    Beep;
    MessageDlg('Output Path does not exists!',mtInformation, [mbOK], 0);
    StatusBar1.SetFocus;
    Exit;
  end;

  Screen.Cursor := crHourGlass;

  // Create memory access
  GIF := TGifImage.Create;
  // load the gif file
  GIF.LoadFromFile(OpenDialog1.FileName);
  // Create memory access for the bitmap graphic.
  Bmp := TBitmap.Create;
  // Determine the pixel format.
  case RadioGroup1.ItemIndex of
    0 : Bmp.PixelFormat := pf8bit;
    1 : Bmp.PixelFormat := pf16bit;
    2 : Bmp.PixelFormat := pf24bit;
    3 : Bmp.PixelFormat := pf32bit;
  end;

  // Pass the size unit of the GIF file to the bitmap graphic.
  Bmp.Width := Gif.Width;
  Bmp.Height := Gif.Height;

  // set bitmap transparent
  if CheckBox7.Checked = true then
  begin
    Bmp.TransparentColor := clBlack;
    Bmp.Transparent := true;
  end;

  // Work through the frames until none are left.
  for i := 0 to Gif.Images.Count - 1 do
  begin
    if GIF.Images[i].Empty then Continue;
    // Pass the number of frames to the second progress bar.
    ProgressBar2.Max := GIF.Images.Count;

    // Set the frames to transparent, though there might be compatibility issues.
    if CheckBox7.Checked = true then
    begin
      Gif.Images[i].Bitmap.TransparentColor := Gif.Images[i].GraphicControlExtension.TransparentColor;
      Gif.Images[i].GraphicControlExtension.Disposal;
      Gif.Images[i].GraphicControlExtension.Transparent := true;
      if i <> 0 then Gif.Images[i].Bitmap.Transparent := True;
    end;

    // Pass a transparent color.
    if CheckBox11.Checked = true then
    begin
      Gif.Images[i].Bitmap.TransparentColor := Gif.Images[i].GraphicControlExtension.TransparentColor;
      Gif.Images[i].GraphicControlExtension.Disposal;
    end;

    // copy gif graphis to bitmap pixel
    Bmp.Canvas.Draw(0, 0, Gif.Images[i].Bitmap);

    // Calculate the frames in grayscale.
    if CheckBox12.Checked = true then
    begin
      Image2.Picture.Bitmap.Assign(bmp);
      ImageGrayScale(Image2);
      Bmp.Assign(Image2.Picture.Bitmap);
    end;

    // convert frames to bitmap
    if ComboBox1.ItemIndex = 0 then
    begin
      try
        Bmp.SaveToFile(Edit2.Text + IntToStr(i) + '.bmp');
        ProgressBar2.Position := i;
        Label3.Caption := 'Progress : ' + IntToStr(ProgressBar2.Position) + ' Frames';
      except
        on E: Exception do
          ShowMessage(E.Message);
      end;
    end;

    // convert frames to jpg
    if ComboBox1.ItemIndex = 1 then
    begin
      try
        Bmp.SaveToFile(Edit2.Text + IntToStr(i) + '.bmp');
        Bmp2Jpeg(Edit2.Text + IntToStr(i) + '.bmp', Edit2.Text + IntToStr(i) + '.jpg');
        DeleteFile(Edit2.Text + IntToStr(i) + '.bmp');
        ProgressBar2.Position := i;
        Label3.Caption := 'Progress : ' + IntToStr(ProgressBar2.Position) + ' Frames';
      except
        on E: Exception do
          ShowMessage(E.Message);
      end;
    end;

    // convert frames to png
    if ComboBox1.ItemIndex = 2 then
    begin
      try
        Bmp.SaveToFile(Edit2.Text + IntToStr(i) + '.bmp');
        BitmapFileToPNG(Edit2.Text + IntToStr(i) + '.bmp', Edit2.Text + IntToStr(i) + '.png');
        DeleteFile(Edit2.Text + IntToStr(i) + '.bmp');
        ProgressBar2.Position := i;
        Label3.Caption := 'Progress : ' + IntToStr(ProgressBar2.Position) + ' Frames';
      except
        on E: Exception do
          ShowMessage(E.Message);
      end;
    end;

    // convert frames to icon
    if ComboBox1.ItemIndex = 3 then
    begin
      try
        Image2.Picture.Bitmap.Assign(bmp);
        bmp2ico(Image2, Edit2.Text + IntToStr(i) + '.ico');
        ProgressBar2.Position := i;
        Label3.Caption := 'Progress : ' + IntToStr(ProgressBar2.Position) + ' Frames';
      except
        on E: Exception do
          ShowMessage(E.Message);
      end;
    end;

    // convert frames to tif
    if ComboBox1.ItemIndex = 4 then
    begin
      try
        Bmp.SaveToFile(Edit2.Text + IntToStr(i) + '.bmp');
        Image2.Picture.Bitmap.Assign(bmp);
        WriteTiffToFile( ChangeFileExt(Edit2.Text + IntToStr(i) + '.bmp', '.TIFF'), Image2.Picture.Bitmap );
        DeleteFile(Edit2.Text + IntToStr(i) + '.bmp');
        ProgressBar2.Position := i;
        Label3.Caption := 'Progress : ' + IntToStr(ProgressBar2.Position) + ' Frames';
      except
        on E: Exception do
          ShowMessage(E.Message);
      end;
    end;

    // convert frames to emf
    if ComboBox1.ItemIndex = 5 then
    begin
      try
        Bmp.SaveToFile(Edit2.Text + IntToStr(i) + '.bmp');
        bmp2emf(Edit2.Text + IntToStr(i) + '.bmp');
        DeleteFile(Edit2.Text + IntToStr(i) + '.bmp');
        ProgressBar2.Position := i;
        Label3.Caption := 'Progress : ' + IntToStr(ProgressBar2.Position) + ' Frames';
      except
        on E: Exception do
          ShowMessage(E.Message);
      end;
    end;

    // convert frames to wmf
    if ComboBox1.ItemIndex = 6 then
    begin
      try
        Bmp.SaveToFile(Edit2.Text + IntToStr(i) + '.bmp');
        BmpToWmf(Edit2.Text + IntToStr(i) + '.bmp', Edit2.Text + IntToStr(i) + '.wmf');
        DeleteFile(Edit2.Text + IntToStr(i) + '.bmp');
        ProgressBar2.Position := i;
        Label3.Caption := 'Progress : ' + IntToStr(ProgressBar2.Position) + ' Frames';
      except
        on E: Exception do
          ShowMessage(E.Message);
      end;
    end;

  // update program
  Application.ProcessMessages;
  end;
  ProgressBar2.Position := ProgressBar2.Max;
  Label3.Caption := 'Progress : 100 %';
  StatusBar1.SetFocus;
  Screen.Cursor := crDefault;
end;

// load folder for building gif
procedure TForm1.BitBtn5Click(Sender: TObject);
var
  Directory: string;
  item : TListItem;
  i, ii, b, m, k : integer;
  Pic : TImage;
begin
  if SelectDirectory('Select Bitmap Directory', '', Directory) then
  begin
    Edit1.Text :=  Directory;
  end else begin
    StatusBar1.SetFocus;
    Exit;
  end;

  // Exit if the folder is empty.
  if DirectoryIsEmpty(Edit1.Text) then
  begin
    Beep;
    MessageDlg('No Bitmap File found!',mtInformation, [mbOK], 0);
    Exit;
  end;

  ListBox1.Clear;
  // List the files.
  ListFileDir(Edit1.Text + '\', ListBox1.Items);

  // clear the scrollbox
  for ii := ScrollBox1.ControlCount - 1 downto 0 do
  begin
    ScrollBox1.Controls[ii].Free;
  end;

  m := 0;
  b := ListBox1.Items.Count - 1;

  for i := 0 to b do
   begin
   Pic := TImage.Create(ScrollBox1);
   Pic.Parent := ScrollBox1;

   with pic do
    begin
      //Parent := ScrollBoxSource;
      Left := m;
      Pic.Picture.Bitmap.LoadFromFile(ListBox1.Items.Strings[i]);
      m := m + Pic.Picture.Bitmap.Width + 5;
      k := Pic.Picture.Bitmap.Height;

      Pic.Height := k;
      Pic.Width := m;
    end;
   end;


  { to view files in ListView
   for i := 0 to ListBox1.Items.Count -1 do begin
   item := ListView1.Items.Add;
   item.Caption := ExtractFileName(ListBox1.Items.Strings[i]);
   end;
  }

  StatusBar1.Panels[1].Text := IntToStr(ListBox1.Count);
  StatusBar1.Panels[3].Text := IntToStr(FolderSize(Edit1.Text) div 1000) + ' kb';
  StatusBar1.SetFocus;
end;

// select output path for export frames from gif
procedure TForm1.BitBtn8Click(Sender: TObject);
var
  Directory: string;
begin
  if SelectDirectory('Select Save Directory', '', Directory) then
  Edit2.Text :=  Directory + '\';
  StatusBar1.SetFocus;
end;

// Display the clicked entry as an image.
procedure TForm1.ListBox1Click(Sender: TObject);
begin
  Image3.Picture.Bitmap.LoadFromFile(ListBox1.Items.Strings[ListBox1.ItemIndex]);
  StatusBar1.Panels[5].Text := IntToStr( MyGetFileSize(ListBox1.Items.Strings[ListBox1.ItemIndex]).QuadPart div 1000) + ' kb'; 
end;

// popup load folder
procedure TForm1.L1Click(Sender: TObject);
begin
  BitBtn5.Click;
end;

// reload last folder
procedure TForm1.R1Click(Sender: TObject);
var
  Directory: string;
  item : TListItem;
  i, ii, b, m, k : integer;
  Pic : TImage;
begin
  if ListBox1.Items.Count = 0 then
  Begin
    Beep;
    MessageDlg('No Bitmap Files loaded',mtInformation, [mbOK], 0);
    StatusBar1.SetFocus;
    Exit;
  end;

  if DirectoryIsEmpty(Edit1.Text) then
  begin
    Beep;
    MessageDlg('No Bitmap File found!',mtInformation, [mbOK], 0);
    Exit;
  end;

  ListBox1.Clear;
  ListFileDir(Edit1.Text + '\', ListBox1.Items);

  // clear the scrollbox
  for ii := ScrollBox1.ControlCount - 1 downto 0 do
  begin
    ScrollBox1.Controls[ii].Free;
  end;

  m := 0;
  b := ListBox1.Items.Count - 1;

  for i := 0 to b do
   begin
   Pic := TImage.Create(ScrollBox1);
   Pic.Parent := ScrollBox1;

   with pic do
    begin
      Left := m;
      Pic.Picture.Bitmap.LoadFromFile(ListBox1.Items.Strings[i]);
      m := m + Pic.Picture.Bitmap.Width + 5;
      k := Pic.Picture.Bitmap.Height;

      Pic.Height := k;
      Pic.Width := m;
    end;
   end;

  { to view files in ListView
   for i := 0 to ListBox1.Items.Count -1 do begin
   item := ListView1.Items.Add;
   item.Caption := ExtractFileName(ListBox1.Items.Strings[i]);
   end;
  }

  StatusBar1.Panels[1].Text := IntToStr(ListBox1.Count);
  StatusBar1.Panels[3].Text := IntToStr(FolderSize(Edit1.Text) div 1000) + ' kb';
  StatusBar1.SetFocus;
end;

// clear all entries
procedure TForm1.C1Click(Sender: TObject);
var
  ii : integer;
begin
  // clear frame list
  ListBox1.Clear;
  // clear gif image
  ImageAnimate.Picture.Graphic := nil;
  // clear image view
  Image3.Picture.Graphic := nil;
  BitBtn1.Caption := 'Animate';
  ProgressBar1.Position := 0;
  Label2.Caption := '0 %';
  StatusBar1.Panels[1].Text := IntToStr(ListBox1.Count);
  StatusBar1.Panels[3].Text := '0 kb';
  StatusBar1.Panels[5].Text := '0 kb';

  // clear the scrollbox
  for ii := ScrollBox1.ControlCount - 1 downto 0 do
  begin
    ScrollBox1.Controls[ii].Free;
  end;

  // remove destination folder path
  Edit1.Clear;
end;

// remove selected frame from list
procedure TForm1.R2Click(Sender: TObject);
begin
  Beep;
  if MessageBox(Handle,'Frame(s) will be removed from the list; are you sure?',
                        'Remove Frame(s)',MB_YESNO) = IDYES then
    BEGIN
      if ListBox1.Items.Count = 0 then
      Begin
        Beep;
        MessageDlg('No Bitmap Files loaded',mtInformation, [mbOK], 0);
        StatusBar1.SetFocus;
        Exit;
      end;

      // single or multiple entries
      ListBox1.DeleteSelected;
      if BitBtn1.Caption = 'Animate' then BitBtn1.OnClick(self);
    END;


  StatusBar1.Panels[1].Text := IntToStr(ListBox1.Count);
end;

// Activate the watermark entry and the settings.
procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    Label5.Enabled := true;
    Label6.Enabled := true;
    Label7.Enabled := true;
    Label8.Enabled := true;
    Label9.Enabled := true;
    SpinEdit2.Enabled := true;
    SpinEdit3.Enabled := true;
    Shape1.Enabled := true;
    Shape2.Enabled := true;
    Edit3.Enabled := true;
  end else begin
    Label5.Enabled := false;
    Label6.Enabled := false;
    Label7.Enabled := false;
    Label8.Enabled := false;
    Label9.Enabled := false;
    SpinEdit2.Enabled := false;
    SpinEdit3.Enabled := false;
    Shape1.Enabled := false;
    Shape2.Enabled := false;
    Edit3.Enabled := false;
  end;
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

// watermark background color
procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog1.Execute then
    Shape1.Brush.Color := ColorDialog1.Color;
end;

// // watermark font color
procedure TForm1.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog2.Execute then
    Shape2.Brush.Color := ColorDialog2.Color;
end;

// show preview transparent
procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked = true then
    Image3.Transparent := true
  else
    Image3.Transparent := false;

  StatusBar1.SetFocus;
end;

// stretch preview
procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked = true then
    Image3.Stretch := true
  else
    Image3.Stretch := false;
    
  StatusBar1.SetFocus;
end;

// center gif in export frames function
procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  if CheckBox5.Checked = true then
    Image1.Center := true
  else
    Image1.Center := false;

  StatusBar1.SetFocus;
end;

// stretch gif in export frames function
procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  if CheckBox6.Checked = true then
    Image1.Stretch := true
  else
    Image1.Stretch := false;

  StatusBar1.SetFocus;
end;

// set transparent gif in export frames function
procedure TForm1.CheckBox7Click(Sender: TObject);
begin
  if CheckBox7.Checked = true then
    Image1.Transparent := true
  else
    Image1.Transparent := false;

  StatusBar1.SetFocus;
end;

// stretch gif in build frames function
procedure TForm1.CheckBox8Click(Sender: TObject);
begin
  if CheckBox8.Checked = true then
    ImageAnimate.Stretch := true
  else
    ImageAnimate.Stretch := false;

  StatusBar1.SetFocus;
end;

// center gif in build frames function
procedure TForm1.CheckBox9Click(Sender: TObject);
begin
  if CheckBox9.Checked = true then
  ImageAnimate.Center := true else ImageAnimate.Center := false;
  StatusBar1.SetFocus;
end;

// set priority class for current process
procedure TForm1.RadioGroup2Click(Sender: TObject);
const
  Priority : array[0..3] of integer = (IDLE_PRIORITY_CLASS, NORMAL_PRIORITY_CLASS, HIGH_PRIORITY_CLASS, REALTIME_PRIORITY_CLASS);
  PLevels  : array[0..3] of byte    = (4, 8, 13, 24);
begin
  SetPriorityClass(GetCurrentProcess, Priority[(Sender as TRadioGroup).Tag]);
  if RadioGroup2.ItemIndex = 0 then begin RadioGroup2.Tag := 0; end;
  if RadioGroup2.ItemIndex = 1 then begin RadioGroup2.Tag := 1; end;
  if RadioGroup2.ItemIndex = 2 then begin RadioGroup2.Tag := 2; end;
  if RadioGroup2.ItemIndex = 3 then begin RadioGroup2.Tag := 3; end;
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

// load CPU 100%
procedure TForm1.CheckBox10Click(Sender: TObject);
var
  H : THandle;
begin
  if CheckBox10.Checked = true then
  begin
    H := GetCurrentProcess();
    SetPriorityClass(H,REALTIME_PRIORITY_CLASS);
  end else begin
    H := GetCurrentProcess();
    SetPriorityClass(H,NORMAL_PRIORITY_CLASS);
  end;
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

// remove gif in export frames function
procedure TForm1.R3Click(Sender: TObject);
begin
  Image1.Picture.Graphic := nil;
end;

// set jpg quality
procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Label13.Caption := IntToStr(ScrollBar1.Position) + ' %';
  BitBtn9.Enabled := true;
end;

// activate jpg quality
procedure TForm1.CheckBox13Click(Sender: TObject);
begin
  if CheckBox13.Checked = true then
  begin
    Label13.Enabled := true;
    ScrollBar1.Enabled := true;
  end else begin
    Label13.Enabled := false;
    ScrollBar1.Enabled := false;
  end;

  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

// set png quality
procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
  Label14.Caption := 'Level : ' + IntToStr(ScrollBar2.Position);
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox11Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox12Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBoxMergeClick(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBoxCropClick(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBoxPaletteClick(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBox16Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBox14Click(Sender: TObject);
begin
  if CheckBox14.Checked = true then
  begin
    Label14.Enabled := true;
    ScrollBar2.Enabled := true;
    CheckBox15.Enabled := true;
  end else begin
    Label14.Enabled := false;
    ScrollBar2.Enabled := false;
    CheckBox15.Enabled := false;
    CheckBox15.Checked := false;
  end;
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBox15Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ReadOptions;
  CheckBox1.OnClick(Sender);
  CheckBox14.OnClick(Sender);
  CheckBox22.OnClick(Sender);
  F1.OnClick(sender);
  W1.OnClick(sender);
  P1.OnClick(sender);
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  WriteOptions;
  BitBtn9.Enabled := false;
end;

procedure TForm1.TabSheet3Show(Sender: TObject);
begin
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBox19Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBox20Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBox21Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
  with (Control as TListbox) do
  begin
    if odSelected in State then
      Canvas.Brush.Color := clRed;
    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left, Rect.Top, Items[Index]);
  end;
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
begin
  try
    form2 := TForm2.Create(nil);
    form2.Show;
  finally
  end;
end;

procedure TForm1.CheckBox22Click(Sender: TObject);
begin
  if CheckBox22.Checked = true then
  begin
    RadioButton1.Enabled := true;
    RadioButton2.Enabled := true;
  end else begin
    RadioButton1.Enabled := false;
    RadioButton2.Enabled := false;
    RadioButton1.Checked := false;
    RadioButton2.Checked := false;
  end;

  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBox24Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.CheckBox23Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  BitBtn9.Enabled := true;
end;

procedure TForm1.V1Click(Sender: TObject);
begin
  if ListBox1.Items.Count = 0 then
  begin
    Beep;
    MessageDlg('No frames found!',mtInformation, [mbOK], 0);
    Exit;
  end;

  try
    // view frame
    form2 := TForm2.Create(nil);
    form2.Show;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

// set size for horizontal scrollbar in listbox
procedure TForm1.N2Click(Sender: TObject);
begin
  ListBox1.Sorted := true;
  SendMessage(ListBox1.Handle,LB_SetHorizontalExtent,1000,0);
end;

procedure TForm1.A1Click(Sender: TObject);
begin
  SortingAlpha;
  SendMessage(ListBox1.Handle,LB_SetHorizontalExtent,1000,0);
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  SortingNum;
  SendMessage(ListBox1.Handle,LB_SetHorizontalExtent,1000,0);
end;

procedure TForm1.M1Click(Sender: TObject);
begin
  SortingMixed;
  SendMessage(ListBox1.Handle,LB_SetHorizontalExtent,1000,0);
end;

// show hide frames preview
procedure TForm1.F1Click(Sender: TObject);
begin
  if F1.Checked = true then
  begin
    Splitter1.Visible := true;
    ScrollBox1.Visible := true;
  end else begin
    ScrollBox1.Visible := false;
    Splitter1.Visible := false;
  end;
end;

// show hide progress panel
procedure TForm1.P1Click(Sender: TObject);
begin
  if P1.Checked = true then
  begin
    Panel5.Visible := true;
  end else begin
    Panel5.Visible := false;
  end;
end;

// show hide watermark panel
procedure TForm1.W1Click(Sender: TObject);
begin
  if W1.Checked = true then
  begin
    Panel9.Visible := true;
  end else begin
    Panel9.Visible := false;
  end;
end;

end.

