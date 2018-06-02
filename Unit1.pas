unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  matrica = array[1..15,1..15] of real;
  ENotIntError = class(EConvertError);
  EMatrixNotCompare = class(Exception);
  TMatrixMult = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    n1, m1, n2, m2: integer;
    c : matrica;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatrixMult: TMatrixMult;

implementation

{$R *.dfm}
procedure CheckFilling();
begin
  if (MatrixMult.Edit1.Text = '') or (MatrixMult.Edit2.Text = '') or
  (MatrixMult.Edit3.Text = '') or (MatrixMult.Edit4.Text = '') then
  begin
    MatrixMult.Memo1.Lines.Add('Вы заполнили не все поля');
    MatrixMult.Memo1.Font.Color := ClRed;
    MatrixMult.Memo1.Font.Style := [fsbold];
    raise ENotIntError.Create('Заполнены не все поля');
  end;
end;

function MatrixFilling(n, m : integer): matrica;
var i, j : integer;
    a : matrica;
begin
  for i := 1 to n do
    for j := 1 to m do
      a[i,j] := random (20) + 1;
  Result := a;
end;

procedure MatrixShow(a:matrica; n, m : integer);
var i, j : integer;
    s : string;
begin
  for i := 1 to n do
  begin
    for j := 1 to m do
      s := s + '[' + IntToStr(i) + ', ' + IntToStr(j) + '] = ' + FloatToStr(a[i,j]) + ' ';
    MatrixMult.Memo1.Lines.Add(s);
    s := '';
  end;
  MatrixMult.Memo1.Lines.Add('')
end;

function Mult(_n1, _m1, _n2, _m2 : integer):matrica;
var a, b : matrica;
    i, j, k, n1, m2, l: integer;
begin
  n1 := _n1;
  m2 := _m2;
  if _m1 = _n2 then
    l := _m1
  else
    raise EMatrixNotCompare.Create('Матрицы невозможно перемножить');

  a := MatrixFilling(n1, l);
  MatrixShow(a, n1, l);

  b := MatrixFilling(l, m2);
  MatrixShow(b, l, m2);

  for i := 1 to n1 do
  begin
    for j := 1 to m2 do
    begin
      MatrixMult.c[i,j] := 0;
      for k := 1 to l do
        MatrixMult.c[i,j] := MatrixMult.c[i,j] + a[i,k] * b[k,j]
    end;
  end;

  Result := MatrixMult.c;
end;

procedure TMatrixMult.Button1Click(Sender: TObject);
begin
  //Проверяем на заполненность поля в TEdit
  CheckFilling;
  try
    //Пытаемся данные из TEdit преобразовать в Integer
    n1 := StrToInt(Edit1.Text);
    m1 := StrToInt(Edit2.Text);
    n2 := StrToInt(Edit3.Text);
    m2 := StrToInt(Edit4.Text);
  except
    //Если не получается преобразовать, то вызываем исключение
    on EConvertError do
    begin
      Memo1.Lines.Add('Введите в поля натуральные числа');
      Memo1.Font.Color := ClRed;
      Memo1.Font.Style := [fsbold];
      raise Exception.Create('Поддерживаются только натуральные числа');
    end;
  end;

  try
    //Проверим равенство числа столбцов первой матрицы
    //и числа строк второй
    if m1 <> n2 then
    begin
      //Если неравны, то вызывем исключение
      Memo1.Lines.Clear;
      MatrixMult.Memo1.Font.Color := ClRed;
      MatrixMult.Memo1.Font.Style := [fsbold];
      //Edit2.Text := '';
      Edit2.Color := ClRed;
      Edit2.Font.Color := ClWhite;
      //Edit3.Text := '';
      Edit3.Color := ClRed;
      Edit3.Font.Color := ClWhite;
      Memo1.Lines.Add('Количество столбцов 1ой матрицы должно совпадать с количеством строк во второй матрице');
      raise EMatrixNotCompare.Create('Матрицы невозможно перемножить');
    end;
  finally
  //ничего не выполняем в блоке finally
  end;

  Memo1.Font.Color := ClBlack;
  Memo1.Font.Style := [];
  Memo1.Lines.Clear;
  Memo1.Text := '';
  Edit3.Color := ClWhite;
  Edit3.Font.Color := ClBlack;
  Edit2.Color := ClWhite;
  Edit2.Font.Color := ClBlack;

  //Если все прошло успешно, то выполняем умножение
  //и выводим получившуюся матрицу
  c := Mult(n1, m1, n2, m2);
  Memo1.Lines.Add('Получившаяся матрица:');
  MatrixShow(c, n1, m2);
end;

procedure TMatrixMult.FormCreate(Sender: TObject);
begin
  Memo1.Text := '';
  MatrixMult.Memo1.Font.Color := ClBlack;
  MatrixMult.Memo1.Font.Style := [];
  randomize;
end;

end.
