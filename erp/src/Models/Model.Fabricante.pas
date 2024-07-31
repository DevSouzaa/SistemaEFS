unit Model.Fabricante;

interface

type
  IFabricante = interface
    ['{A35FC20E-3E8D-4E29-AC9F-5F39E6D21875}'] // GUID único
    function GetID: Integer;
    function GetDescricao: string;
    procedure SetID(Value: Integer);
    procedure SetDescricao(Value: string);
    property ID: Integer read GetID write SetID;
    property Descricao: string read GetDescricao write SetDescricao;
  end;

  TFabricante = class(TInterfacedObject, IFabricante)
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

{ TFabricante }

function TFabricante.GetID: Integer;
begin
  Result := FID;
end;

function TFabricante.GetDescricao: string;
begin
  Result := FDescricao;
end;

procedure TFabricante.SetID(Value: Integer);
begin
  FID := Value;
end;

procedure TFabricante.SetDescricao(Value: string);
begin
  FDescricao := Value;
end;

end.

