unit Model.Grupo;

interface

type
  IGrupo = interface
    ['{8B5E7C38-4F6A-4F9D-B7C9-5164D2E86B5B}'] // GUID único
    function GetID: Integer;
    function GetDescricao: string;
    procedure SetID(Value: Integer);
    procedure SetDescricao(Value: string);
    property ID: Integer read GetID write SetID;
    property Descricao: string read GetDescricao write SetDescricao;
  end;

  TGrupo = class(TInterfacedObject, IGrupo)
  private
    FID: Integer;
    FDescricao: string;
    function GetID: Integer;
    function GetDescricao: string;
    procedure SetID(Value: Integer);
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

function TGrupo.GetDescricao: string;
begin
  Result := FDescricao;
end;

procedure TGrupo.SetID(Value: Integer);
begin
  FID := Value;
end;

procedure TGrupo.SetDescricao(Value: string);
begin
  FDescricao := Value;
end;

end.

