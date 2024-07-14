unit Criptografia;

interface
uses
  BCrypt;

type
  TCriptografia = class
    private

    public
      function GenerateHash(Const Password: string): string;
      function CompareHash(Const Password, HashPassword: string): boolean;

    end;

implementation

{ TCriptografia }

function TCriptografia.CompareHash(const Password,HashPassword: string): boolean;
begin
  result := TBCrypt.CompareHash(Password, HashPassword);
end;

function TCriptografia.GenerateHash(const Password: string): string;
begin
  result := TBCrypt.GenerateHash(Password);
end;

end.
