unit Model.Grupo;

interface

uses
  Model.Base;

type
  TGrupo = class(TModelBase)
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

{ TGrupo }

function TGrupo.GetID: Integer;
begin
  Result := FID;
end;

procedure TGrupo.SetID(Value: Integer);
begin
  FID := Value;
end;

function TGrupo.GetDescricao: string;
begin
  Result := FDescricao;
end;

procedure TGrupo.SetDescricao(Value: string);
begin
  FDescricao := Value;
end;

end.

