﻿using DiamondShopSys.Data.Models;
using DiamondShopSys.WPFApp.UI.Companies;
using DiamondShopSys.WPFApp.UI.Products;
using DiamondShopSystem.WpfApp.UI;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DiamondShopSys.WPFApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Open_wProduct_Click(object sender, RoutedEventArgs e)
        {
            var p = new wProduct();
            p.Owner = this;
            p.Show();
        }

        private void Open_wSearchProduct_Click(object sender, RoutedEventArgs e)
        {
            var p = new wSearchProduct();
            p.Owner = this;
            p.Show();
        }

        private void Open_wCompany_Click(object sender, RoutedEventArgs e)
        {
            var c = new wCompany();
            c.Owner = this;
            c.Show();
        }

        private void Open_wSearchCompany_Click(object sender, RoutedEventArgs e)
        {
            var c = new wSearchCompany();
            c.Owner = this;
            c.Show();
        }
        private void Open_wCustomer_Click(object sender, RoutedEventArgs e)
        {
            var p = new WCustomer();
            p.Owner = this;
            p.Show();
        }
        private void Open_wSearchCustomer_Click(object sender, RoutedEventArgs e)
        {
            var p = new WSearchCustomer();
            p.Owner = this;
            p.Show();
        }
    }
}