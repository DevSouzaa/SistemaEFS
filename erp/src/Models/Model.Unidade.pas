unit Model.Unidade;

interface

uses
  System.SysUtils, Model.Base;

type
  TUnidade = class(TModelBase)
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
    procedure SetID(Value: Integer);
    function GetDescricao: string;
    procedure SetDescricao(Value: string);
  public
    property ID: Integer read GetID write SetID;
    property Descricao: string read GetDescricao write SetDescricao;
    property IDUsuarioCadastro: Integer read FIDUsuarioCadastro write FIDUsuarioCadastro;
    property IDUsuarioAlteracao: Integer read FIDUsuarioAlteracao write FIDUsuarioAlteracao;
    property Fracao: Integer read FFracao write FFracao;
    property Sigla: string read FSigla write FSigla;
    property Ativo: Boolean read FAtivo write FAtivo;
    property DataHoraAlteracao: TDateTime read FDataHoraAlteracao write FDataHoraAlteracao;
    property DataHoraCadastro: TDateTime read FDataHoraCadastro write FDataHoraCadastro;
  end;

implementation

{ TUnidade }

function TUnidade.GetID: Integer;
begin
  Result := FID;
end;

procedure TUnidade.SetID(Value: Integer);
begin
  FID := Value;
end;

function TUnidade.GetDescricao: string;
begin
  Result := FDescricao;
end;

procedure TUnidade.SetDescricao(Value: string);
begin
  FDescricao := Value;
end;

end.

