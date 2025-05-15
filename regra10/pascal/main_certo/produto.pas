unit produto;

interface

type
  TProduto = class
  public
    Descricao: string;
    constructor Create(const ADescricao: string);
  end;

implementation

constructor TProduto.Create(const ADescricao: string);
begin
  Descricao := ADescricao;
end;

end.

