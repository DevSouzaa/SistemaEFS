unit Model.SubGrupo;

interface

uses
  Model.Base;

type
  TSubGrupo = class(TModelBase)
  private
    FID: Integer;
    FDescricao: string;
    function GetID: Integer;
    procedure SetID(Value: Integer);
    function GetDescricao: string;
    procedure SetDescricao(Value: string);
  public
    property ID: Integer read GetID write SetID;
    property Descricao: string read GetDescricao write SetDescricao;
  end;

implementation

{ TSubGrupo }

function TSubGrupo.GetID: Integer;
begin
  Result := FID;
end;

procedure TSubGrupo.SetID(Value: Integer);
begin
  FID := Value;
end;

function TSubGrupo.GetDescricao: string;
begin
  Result := FDescricao;
end;

procedure TSubGrupo.SetDescricao(Value: string);
begin
  FDescricao := Value;
end;

end.

