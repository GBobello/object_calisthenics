unit usuario;

interface

type
  TUsuario = class
  public
    Nome: string;
    constructor Create(const ANome: string);
  end;

implementation

constructor TUsuario.Create(const ANome: string);
begin
  Nome := ANome;
end;

end.

