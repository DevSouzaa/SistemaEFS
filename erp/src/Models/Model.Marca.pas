unit Model.Marca;

interface

type
  IMarca = interface
    ['{7D4F6058-4C78-4E3F-B807-99E635A1B0E3}'] // GUID único
    function GetID: Integer;
    function GetDescricao: string;
    procedure SetID(Value: Integer);
    procedure SetDescricao(Value: string);
    property ID: Integer read GetID write SetID;
    property Descricao: string read GetDescricao write SetDescricao;
  end;

  TMarca = class(TInterfacedObject, IMarca)
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

{ TMarca }

function TMarca.GetID: Integer;
begin
  Result := FID;
end;

function TMarca.GetDescricao: string;
begin
  Result := FDescricao;
end;

procedure TMarca.SetID(Value: Integer);
begin
  FID := Value;
end;

procedure TMarca.SetDescricao(Value: string);
begin
  FDescricao := Value;
end;

end.

