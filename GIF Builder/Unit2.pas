unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure WMGetMinMaxInfo(Var Msg: TMessage); Message WM_GETMINMAXINFO;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}
Procedure TForm2.WMGetMinMaxInfo(Var Msg: TMessage);
Begin
   if Form1.ListBox1.Items.Count = 0 then Exit;
   Image1.Picture.Bitmap.LoadFromFile(Form1.ListBox1.Items.Strings[Form1.ListBox1.ItemIndex]);
   if Form2.Image1.Picture.Height < 300 then
   begin
     PMinMaxInfo(Msg.lParam)^.ptMinTrackSize:= Point(300, 300);
     PMinMaxInfo(Msg.lParam)^.ptMaxTrackSize:= Point(Form2.Image1.Picture.Width,
                                                     Form2.Image1.Picture.Height);
   end else begin
     PMinMaxInfo(Msg.lParam)^.ptMinTrackSize:= Point(Form2.Image1.Picture.Width,
                                                     Form2.Image1.Picture.Height);
     PMinMaxInfo(Msg.lParam)^.ptMaxTrackSize:= Point(Form2.Image1.Picture.Width,
                                                     Form2.Image1.Picture.Height);
   end;
End;

procedure TForm2.FormCreate(Sender: TObject);
begin
  if Form1.ListBox1.Items.Count = 0 then Exit;
  Caption := 'View : ' +
             ExtractFileName(Form1.ListBox1.Items.Strings[Form1.ListBox1.ItemIndex]);
end;

procedure TForm2.FormShow(Sender: TObject);
var
  fileheader: TBitmapfileheader;
  infoheader: TBitmapinfoheader;
  s: TFilestream;
begin
   //Image1.Picture.LoadFromFile(Form1.ListBox1.Items.Strings[Form1.ListBox1.ItemIndex]);

  s := TFileStream.Create(Form1.ListBox1.Items.Strings[Form1.ListBox1.ItemIndex], fmOpenRead);
  try
    s.Read(fileheader, SizeOf(fileheader));
    s.Read(infoheader, SizeOf(infoheader));
  finally
    s.Free;
  end;

  StatusBar1.Panels[1].Text := IntToStr(infoheader.biWidth);
  StatusBar1.Panels[3].Text := IntToStr(infoheader.biHeight);
  StatusBar1.Panels[5].Text := IntToStr(infoheader.biBitCount);
  StatusBar1.Panels[7].Text := IntToStr(infoheader.biClrUsed);
end;
end.
