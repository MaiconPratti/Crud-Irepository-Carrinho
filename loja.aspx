<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loja.aspx.cs" Inherits="Crud_Irepository_Carrinho.loja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="~/StyleSheet.css" rel="stylesheet" />

    <title>Marketplace | Loja</title>
</head>
<body>

    <form id="form1" runat="server">

        <header class="header">
            <nav class="nav-container">
                <ul class="nav-list">
                    <li class="nav-item">Home</li>
                    <li class="nav-item">Produtos</li>
                    <li class="nav-item">Carrinho</li>
                </ul>
            </nav>
            <hr class="header-divider" />
            <h1 class="page-title">MARKETPLACE</h1>
            <!-- adicionar imagem de fundo css -->
        </header>


        <main>
            <section>
                <h2>Produtos (Posters Animes)</h2>
                <div class="posters-container">
                    <div class="poster-container">
                        <strong>Dragon Ball Z</strong>
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl="images/DBZ.jpg" CssClass="poster-image"
                            Height="450px" Width="300px" />
                        <span class="poster-price">R$59,90</span>
                        <button type="button" runat="server" onclick="AdicionarAoCarrinho_Click">Adicionar ao carrinho</button>
                    </div>

                    <div class="poster-container">
                        <strong>Naruto</strong>
                        <br />
                        <asp:Image ID="Image2" runat="server" ImageUrl="images/naruto.jpg"
                            Height="450px" Width="300px" CssClass="poster-image" />
                        <span class="poster-price">R$59,90</span>
                        <button type="button" runat="server" onclick="AdicionarAoCarrinho_Click">Adicionar ao carrinho</button>
                    </div>

                    <div class="poster-container">
                        <strong>One Piece</strong>
                        <br />
                        <asp:Image ID="Image3" runat="server" ImageUrl="images/WantedLuff.png"
                            Height="450px" Width="300px" CssClass="poster-image" />
                        <span class="poster-price">R$59,90</span>
                        <button type="button" runat="server" onclick="AdicionarAoCarrinho_Click">Adicionar ao carrinho</button>
                    </div>

                    <div class="poster-container">
                        <strong>Shingeki no Kiojin</strong>
                        <br />
                        <asp:Image ID="Image4" runat="server" Height="450px"
                            ImageUrl="images/Shingeki.jpg" Width="300px" CssClass="poster-image" />
                        <span class="poster-price">R$59,90</span>
                        <button type="button" runat="server" onclick="AdicionarAoCarrinho_Click">Adicionar ao carrinho</button>
                    </div>
                </div>
            </section>

            <section>
                <h2>Carrinho</h2>
                <table id="carrinhoTable" border="1" runat="server">
                    <tr>
                        <th>Produto</th>
                        <th>Quantidade</th>
                        <th>Preço Unitário</th>
                        <th>Total</th>
                        <th>Ação</th>
                    </tr>
                </table>
            </section>
        </main>

        <footer>
            <div>
                <h3>Desenvolvido por: </h3>
                <p>Maicon Pratti</p>
                <p>Rickelme</p>
            </div>
        </footer>

    </form>

</body>
</html>
