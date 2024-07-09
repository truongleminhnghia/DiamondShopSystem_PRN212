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
    /// Interaction logic for wSearchProduct.xaml
    /// </summary>
    public partial class wSearchProduct : Window
    {
        private readonly ProductBusiness _business;
        public wSearchProduct()
        {
            InitializeComponent();
            this._business ??= new ProductBusiness();
            DataContext = this;
            this.LoadGrdProduct();
        }
        private async void LoadGrdProduct()
        {
            var result = await _business.GetAll();

            if (result.Status > 0 && result.Data != null)
            {
                grdProduct.ItemsSource = result.Data as List<Product>;
            }
            else
            {
                grdProduct.ItemsSource = new List<Product>();
            }
        }

        private void ButtonCloess_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

       /* private async void ButtonSearch_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                // Retrieve and validate inputs
                string? name = string.IsNullOrEmpty(ProductName.Text) ? null : ProductName.Text.ToLower();
                string? brand = string.IsNullOrEmpty(Brand.Text) ? null : Brand.Text.ToLower();
                string? diamond = string.IsNullOrEmpty(Diamond.Text) ? null : Diamond.Text.ToLower();
                bool? status = Status.IsChecked;

                // Validate and parse price input
                double? price = null;
                if (!string.IsNullOrEmpty(Price.Text) && double.TryParse(Price.Text, out double parsedPrice))
                {
                    price = parsedPrice;
                }

                // Validate and parse size input
                int? size = null;
                if (!string.IsNullOrEmpty(Size.Text) && int.TryParse(Size.Text, out int parsedSize))
                {
                    size = parsedSize;
                }

                // Execute the search query with the provided filters
                var searchResults = await _business.SearchByCondition(name, brand, diamond, price, status, size);

                // Handle the search results
                if (searchResults.Status > 0 && searchResults.Data != null && searchResults.Data is List<Product> products)
                {
                    if (products.Any())
                    {
                        grdProduct.ItemsSource = products;
                    }
                    else
                    {
                        MessageBox.Show("No products found matching the criteria.");
                        grdProduct.ItemsSource = new List<Product>(); // Clear the grid if no products found
                    }
                }
                else
                {
                    // Fallback to get all products if no specific results are found
                    var allResult = await _business.GetAll();
                    grdProduct.ItemsSource = allResult.Data as List<Product> ?? new List<Product>();
                }
            }
            catch (Exception ex)
            {
                // Handle any unexpected errors
                MessageBox.Show($"An error occurred: {ex.Message}");
            }
        }*/




        private async void grdProduct_MouseDouble_Click(object sender, RoutedEventArgs e)
        {
            if (grdProduct.SelectedItem is Product selectedCustomer)
            {
                var detailWindow = new wProductDetail(selectedCustomer.ProductId);
                detailWindow.ShowDialog();
            }
        }
    }
}
