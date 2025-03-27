﻿using System;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using ServiceCenter.ViewModel;

namespace ServiceCenter
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            DataContext=new MainWindowViewModel();
            (DataContext as MainWindowViewModel).LoadCustomers();
        }

        private void getButton_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as MainWindowViewModel).LoadCustomers();
        }

        private void deleteButton_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as MainWindowViewModel).DeleteCustomer();
        }

        private void addButton_Click(object sender, RoutedEventArgs e)
        {
            AddCustomerWindow addCustomerWindow = new AddCustomerWindow();
            addCustomerWindow.Owner = this;
            addCustomerWindow.ShowDialog();
        }
    }
}
