using DiamondShopSys.Data.Models;
using DiamondShopSysBussiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace DiamondShopSys.WPFApp.UI.Products
{
    /// <summary>
    /// Interaction logic for wProductDetail.xaml
    /// </summary>
    public partial class wProductDetail : Window
    {
        private readonly ProductBusiness _business;
        private readonly int _id;
        public wProductDetail(int productId)
        {
            InitializeComponent();
            _business = new ProductBusiness();
            _id = productId;
            LoadProductDetail();
        }

        private async void LoadProductDetail()
        {
            var result = await _business.GetById(_id);
            if (result.Status > 0 && result.Data != null)
            {
                var product = result.Data as Product;
                if (product != null)
                {
                    ProductIdBlockText.Text = product.ProductId.ToString();
                    ProductNameBlockText.Text = product.ProductName;
                    BrandBlockText.Text = product.Brand;
                    DiamondBlockText.Text = product.Diamond;
                    CategoryIdBlockText.Text = product.CategoryId.ToString();
                    SizeBlockText.Text = product.Size.ToString();
                    QuantityBlockText.Text = product.Quantity.ToString();
                    PriceBlockText.Text = product.Price.ToString();
                    StatusBlockText.Text = product.Status.ToString();
                    DescriptionBlockText.Text = product.Description;

                    if (!string.IsNullOrEmpty(product.Image))
                    {
                        var uri = new Uri(product.Image, UriKind.RelativeOrAbsolute);
                        ProductImage.Source = new BitmapImage(uri);
                    }
                }
            }
        }

        private void ButtonCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
