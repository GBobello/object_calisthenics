unit main_errado;

interface

type
  TUsuario = class
  public
    Nome: string;
    constructor Create(const ANome: string);
  end;

  TProduto = class
  public
    Descricao: string;
    constructor Create(const ADescricao: string);
  end;

  TPedido = class
  public
    Usuario: TUsuario;
    Produtos: TArray<TProduto>;
    constructor Create(AUsuario: TUsuario; AProdutos: TArray<TProduto>);
  end;

implementation

{ TUsuario }

constructor TUsuario.Create(const ANome: string);
begin
  Nome := ANome;
end;

{ TProduto }

constructor TProduto.Create(const ADescricao: string);
begin
  Descricao := ADescricao;
end;

{ TPedido }

constructor TPedido.Create(AUsuario: TUsuario; AProdutos: TArray<TProduto>);
begin
  Usuario := AUsuario;
  Produtos := AProdutos;
end;

end.

