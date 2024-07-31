unit Model.Unidade;

interface

uses
  System.SysUtils;

type
  IUnidade = interface
    ['{D82B0D2D-1E2E-4E71-8A3E-75B6633D23AB}'] // GUID �nico
    function GetID: Integer;
    function GetDescricao: string;
    function GetIDUsuarioCadastro: Integer;
    function GetIDUsuarioAlteracao: Integer;
    function GetFracao: Integer;
    function GetSigla: string;
    function GetAtivo: Boolean;
    function GetDataHoraAlteracao: TDateTime;
    function GetDataHoraCadastro: TDateTime;
    procedure SetID(Value: Integer);
    procedure SetDescricao(Value: string);
    procedure SetIDUsuarioCadastro(Value: Integer);
    procedure SetIDUsuarioAlteracao(Value: Integer);
    procedure SetFracao(Value: Integer);
    procedure SetSigla(Value: string);
    procedure SetAtivo(Value: Boolean);
    procedure SetDataHoraAlteracao(Value: TDateTime);
    procedure SetDataHoraCadastro(Value: TDateTime);
    property ID: Integer read GetID write SetID;
    property Descricao: string read GetDescricao write SetDescricao;
    property IDUsuarioCadastro: Integer read GetIDUsuarioCadastro write SetIDUsuarioCadastro;
    property IDUsuarioAlteracao: Integer read GetIDUsuarioAlteracao write SetIDUsuarioAlteracao;
    property Fracao: Integer read GetFracao write SetFracao;
    property Sigla: string read GetSigla write SetSigla;
    property Ativo: Boolean read GetAtivo write SetAtivo;
    property DataHoraAlteracao: TDateTime read GetDataHoraAlteracao write SetDataHoraAlteracao;
    property DataHoraCadastro: TDateTime read GetDataHoraCadastro write SetDataHoraCadastro;
  end;

  TUnidade = class(TInterfacedObject, IUnidade)
  private
    FID: Integer;
    FDescricao: string;
    FIDUsuarioCadastro: Integer;
    FIDUsuarioAlteracao: Integer;
    FFracao: Integer;
    FSigla: string;
    FAtivo: Boolean;
    FDataHoraAlteracao: TDateTime;
    FDataHoraCadastro: TDateTime;
    function GetID: Integer;
    function GetDescricao: string;
    function GetIDUsuarioCadastro: Integer;
    function GetIDUsuarioAlteracao: Integer;
    function GetFracao: Integer;
    function GetSigla: string;
    function GetAtivo: Boolean;
    function GetDataHoraAlteracao: TDateTime;
    function GetDataHoraCadastro: TDateTime;
    procedure SetID(Value: Integer);
    procedure SetDescricao(Value: string);
    procedure SetIDUsuarioCadastro(Value: Integer);
    procedure SetIDUsuarioAlteracao(Value: Integer);
    procedure SetFracao(Value: Integer);
    procedure SetSigla(Value: string);
    procedure SetAtivo(Value: Boolean);
    procedure SetDataHoraAlteracao(Value: TDateTime);
    procedure SetDataHoraCadastro(Value: TDateTime);
  public
    property ID: Integer read GetID write SetID;
    property Descricao: string read GetDescricao write SetDescricao;
    property IDUsuarioCadastro: Integer read GetIDUsuarioCadastro write SetIDUsuarioCadastro;
    property IDUsuarioAlteracao: Integer read GetIDUsuarioAlteracao write SetIDUsuarioAlteracao;
    property Fracao: Integer read GetFracao write SetFracao;
    property Sigla: string read GetSigla write SetSigla;
    property Ativo: Boolean read GetAtivo write SetAtivo;
    property DataHoraAlteracao: TDateTime read GetDataHoraAlteracao write SetDataHoraAlteracao;
    property DataHoraCadastro: TDateTime read GetDataHoraCadastro write SetDataHoraCadastro;
  end;

implementation

{ TUnidade }

function TUnidade.GetID: Integer;
begin
  Result := FID;
end;

function TUnidade.GetDescricao: string;
begin
  Result := FDescricao;
end;

function TUnidade.GetIDUsuarioCadastro: Integer;
begin
  Result := FIDUsuarioCadastro;
end;

function TUnidade.GetIDUsuarioAlteracao: Integer;
begin
  Result := FIDUsuarioAlteracao;
end;

function TUnidade.GetFracao: Integer;
begin
  Result := FFracao;
end;

function TUnidade.GetSigla: string;
begin
  Result := FSigla;
end;

function TUnidade.GetAtivo: Boolean;
begin
  Result := FAtivo;
end;

function TUnidade.GetDataHoraAlteracao: TDateTime;
begin
  Result := FDataHoraAlteracao;
end;

function TUnidade.GetDataHoraCadastro: TDateTime;
begin
  Result := FDataHoraCadastro;
end;

procedure TUnidade.SetID(Value: Integer);
begin
  FID := Value;
end;

procedure TUnidade.SetDescricao(Value: string);
begin
  FDescricao := Value;
end;

procedure TUnidade.SetIDUsuarioCadastro(Value: Integer);
begin
  FIDUsuarioCadastro := Value;
end;

procedure TUnidade.SetIDUsuarioAlteracao(Value: Integer);
begin
  FIDUsuarioAlteracao := Value;
end;

procedure TUnidade.SetFracao(Value: Integer);
begin
  FFracao := Value;
end;

procedure TUnidade.SetSigla(Value: string);
begin
  FSigla := Value;
end;

procedure TUnidade.SetAtivo(Value: Boolean);
begin
  FAtivo := Value;
end;

procedure TUnidade.SetDataHoraAlteracao(Value: TDateTime);
begin
  FDataHoraAlteracao := Value;
end;

procedure TUnidade.SetDataHoraCadastro(Value: TDateTime);
begin
  FDataHoraCadastro := Value;
end;

end.

