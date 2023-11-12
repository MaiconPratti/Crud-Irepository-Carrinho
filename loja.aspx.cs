using System;
using System.Collections.Generic;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Crud_Irepository_Carrinho
{
    public partial class loja : System.Web.UI.Page
    {
        // Classe para representar um item no carrinho
        public class CarrinhoItem
        {
            public string Produto { get; set; }
            public int Quantidade { get; set; }
            public decimal PrecoUnitario { get; set; }

            public decimal CalcularTotal()
            {
                return Quantidade * PrecoUnitario;
            }
        }

        private List<CarrinhoItem> carrinho;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Inicializa a lista do carrinho se ainda não foi inicializada
                if (Session["Carrinho"] == null)
                {
                    carrinho = new List<CarrinhoItem>();
                    Session["Carrinho"] = carrinho;
                }

                // Inicializa a exibição do carrinho
                AtualizarExibicaoCarrinho();
            }
        }

        protected void AdicionarAoCarrinho_Click(object sender, EventArgs e)
        {
            Button btnAdicionar = (Button)sender;
            string produto = btnAdicionar.Parent.FindControl("Image1").ClientID;

            int quantidade = 1;
            decimal precoUnitario = 59.90m;

            CarrinhoItem novoItem = new CarrinhoItem
            {
                Produto = produto,
                Quantidade = quantidade,
                PrecoUnitario = precoUnitario
            };

            carrinho = (List<CarrinhoItem>)Session["Carrinho"];
            carrinho.Add(novoItem);

            AtualizarExibicaoCarrinho();
        }

        // No método AtualizarExibicaoCarrinho:

        private void AtualizarExibicaoCarrinho()
        {
            carrinho = (List<CarrinhoItem>)Session["Carrinho"];
            carrinhoTable.Rows.Clear();

            // Adiciona as colunas à tabela
            HtmlTableRow headerRow = new HtmlTableRow(); // Use HtmlTableRow
            headerRow.Cells.Add(new HtmlTableCell { InnerText = "Produto" });
            headerRow.Cells.Add(new HtmlTableCell { InnerText = "Quantidade" });
            headerRow.Cells.Add(new HtmlTableCell { InnerText = "Preço Unitário" });
            headerRow.Cells.Add(new HtmlTableCell { InnerText = "Total" });
            headerRow.Cells.Add(new HtmlTableCell { InnerText = "Ação" });
            carrinhoTable.Rows.Add(headerRow);

            // Adiciona os itens do carrinho à tabela
            foreach (var item in carrinho)
            {
                HtmlTableRow dataRow = new HtmlTableRow(); // Use HtmlTableRow
                dataRow.Cells.Add(new HtmlTableCell { InnerText = item.Produto });
                dataRow.Cells.Add(new HtmlTableCell { InnerText = item.Quantidade.ToString() });
                dataRow.Cells.Add(new HtmlTableCell { InnerText = item.PrecoUnitario.ToString("C") });
                dataRow.Cells.Add(new HtmlTableCell { InnerText = item.CalcularTotal().ToString("C") });
                dataRow.Cells.Add(new HtmlTableCell { InnerText = "Ação" });
                carrinhoTable.Rows.Add(dataRow);
            }
        }
    }
}