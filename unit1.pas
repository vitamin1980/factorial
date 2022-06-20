unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


function factorial(n:integer):integer;
begin
  if n<2 then Result:=n else Result:=n*factorial(n-1);
end;

procedure TForm1.Button1Click(Sender: TObject);
var n:integer;
begin
  n:=StrToInt(Edit1.text);
  Edit1.text:=IntToStr(factorial(n));
end;



end.

