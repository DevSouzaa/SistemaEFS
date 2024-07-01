unit cryptography.model;

interface
uses
  BCrypt;

type
  Tcryptography = class
    private

    public
      function GenerateHash(Const Password: string): string;
      function CampareHash(Const Password, HashPassword: string): boolean;

    end;

implementation

{ Tcryptography }

function Tcryptography.CampareHash(const Password,HashPassword: string): boolean;
begin
  result := TBCrypt.CompareHash(Password, HashPassword);
end;

function Tcryptography.GenerateHash(const Password: string): string;
begin
  result := TBCrypt.GenerateHash(Password);
end;

end.
