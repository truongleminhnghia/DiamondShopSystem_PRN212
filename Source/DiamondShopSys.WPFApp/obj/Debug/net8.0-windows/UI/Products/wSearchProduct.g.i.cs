﻿#pragma checksum "..\..\..\..\..\UI\Products\wSearchProduct.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "59F595EB7A404D1A8D8FD6633955B3B552C5171F"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DiamondShopSys.WPFApp.UI.Products;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace DiamondShopSys.WPFApp.UI.Products {
    
    
    /// <summary>
    /// wSearchProduct
    /// </summary>
    public partial class wSearchProduct : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 27 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox ProductName;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Brand;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Diamond;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Price;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Size;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.CheckBox Status;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonSearch;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonViewDetail;
        
        #line default
        #line hidden
        
        
        #line 48 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid grdProduct;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.4.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/DiamondShopSys.WPFApp;component/ui/products/wsearchproduct.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.4.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.ProductName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.Brand = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.Diamond = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.Price = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.Size = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.Status = ((System.Windows.Controls.CheckBox)(target));
            return;
            case 7:
            this.ButtonSearch = ((System.Windows.Controls.Button)(target));
            return;
            case 8:
            this.ButtonViewDetail = ((System.Windows.Controls.Button)(target));
            return;
            case 9:
            
            #line 44 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ButtonCloess_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.grdProduct = ((System.Windows.Controls.DataGrid)(target));
            
            #line 49 "..\..\..\..\..\UI\Products\wSearchProduct.xaml"
            this.grdProduct.MouseDoubleClick += new System.Windows.Input.MouseButtonEventHandler(this.grdProduct_MouseDouble_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

