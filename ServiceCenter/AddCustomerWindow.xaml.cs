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
using System.Windows.Shapes;
using ServiceCenter.ViewModel;

namespace ServiceCenter
{
    /// <summary>
    /// Логика взаимодействия для AddCustomerWindow.xaml
    /// </summary>
    public partial class AddCustomerWindow : Window
    {
        public AddCustomerWindow()
        {
            InitializeComponent();
            DataContext = new MainWindowViewModel();
        }

        private void saveButton_Click(object sender, RoutedEventArgs e)
        {
            var result = (DataContext as MainWindowViewModel).AddNewCustomer();

            if (result)
            {
                MessageBox.Show("Объект записан");
                ((this.Owner as MainWindow).DataContext as MainWindowViewModel).LoadCustomers();
                this.Close();
            }
        }
    }
}
