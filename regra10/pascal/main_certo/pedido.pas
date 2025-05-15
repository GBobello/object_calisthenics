unit pedido;

interface

uses
  Usuario, Produto;

type
  TPedido = class
  public
    Usuario: TUsuario;
    Produtos: TArray<TProduto>;
    constructor Create(AUsuario: TUsuario; AProdutos: TArray<TProduto>);
  end;

implementation

constructor TPedido.Create(AUsuario: TUsuario; AProdutos: TArray<TProduto>);
begin
  Usuario := AUsuario;
  Produtos := AProdutos;
end;

end.

