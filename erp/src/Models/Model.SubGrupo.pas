unit Model.SubGrupo;

interface

type
  ISubGrupo = interface
    ['{C2D4E0A2-6E88-4A5B-9A3F-9C393F6C80AD}'] // GUID único
    function GetID: Integer;
    function GetDescricao: string;
    procedure SetID(Value: Integer);
    procedure SetDescricao(Value: string);
    property ID: Integer read GetID write SetID;
    property Descricao: string read GetDescricao write SetDescricao;
  end;

  TSubGrupo = class(TInterfacedObject, ISubGrupo)
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

{ TSubGrupo }

function TSubGrupo.GetID: Integer;
begin
  Result := FID;
end;

function TSubGrupo.GetDescricao: string;
begin
  Result := FDescricao;
end;

procedure TSubGrupo.SetID(Value: Integer);
begin
  FID := Value;
end;

procedure TSubGrupo.SetDescricao(Value: string);
begin
  FDescricao := Value;
end;

end.

