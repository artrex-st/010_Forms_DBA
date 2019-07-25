unit UfrmCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList,
  Vcl.ImgList;

type
  TfrmCadastroPadrao = class(TForm)
    GroupBox1: TGroupBox;
    btnAdd: TButton;
    btnDel: TButton;
    btnEdit: TButton;
    btnCancel: TButton;
    btnSave: TButton;
    btnFirst: TButton;
    btnBack: TButton;
    btnNext: TButton;
    btnLast: TButton;
    tabela: TFDQuery;
    dsTabela: TDataSource;
    btnPesquisa: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure Ativo();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.dfm}

uses UdmConexao;

procedure TfrmCadastroPadrao.Ativo;
begin
  if btnSave.Enabled=false then
    begin
      btnAdd.Enabled:=false;
      btnEdit.Enabled:=false;
      btnDel.Enabled:=false;
      btnNext.Enabled:=false;
      btnBack.Enabled:=false;
      btnSave.Enabled:=true;
    end
      else
        begin
          btnAdd.Enabled:=true;
          btnEdit.Enabled:=true;
          btnDel.Enabled:=true;
          btnNext.Enabled:=true;
          btnBack.Enabled:=true;
          btnSave.Enabled:=false;
        end
end;

procedure TfrmCadastroPadrao.btnAddClick(Sender: TObject);
begin
  tabela.Append;
end;

procedure TfrmCadastroPadrao.btnDelClick(Sender: TObject);
begin
  tabela.Delete;

end;

procedure TfrmCadastroPadrao.btnEditClick(Sender: TObject);
begin
  tabela.Edit;
end;

procedure TfrmCadastroPadrao.btnFirstClick(Sender: TObject);
begin
  tabela.First;
end;

procedure TfrmCadastroPadrao.btnLastClick(Sender: TObject);
begin
  tabela.Last;
end;

procedure TfrmCadastroPadrao.btnNextClick(Sender: TObject);
begin
  tabela.Next;
end;

procedure TfrmCadastroPadrao.btnSaveClick(Sender: TObject);
begin
  tabela.Post;
end;

procedure TfrmCadastroPadrao.btnBackClick(Sender: TObject);
begin
  tabela.Prior;
end;

procedure TfrmCadastroPadrao.btnCancelClick(Sender: TObject);
begin
  tabela.Cancel;
end;

end.
