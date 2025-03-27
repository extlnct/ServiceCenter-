using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using ServiceCenter.Model;

namespace ServiceCenter.ViewModel
{
    public class MainWindowViewModel : BaseViewModel
    {
        private string _name;
        private string _secondname;
        private string _lastname;
        private string _phone;
        private string _email;
        private string _address;
        private ObservableCollection<Customers> _customers;
        private Customers _selectedcustomer;
        private Customers _newcustomer;
        public string Name
        {
            get => _name;
            set => SetPropertyChanged(ref _name, value, nameof(Name));
        }
        public string Secondname
        {
            get => _secondname;
            set => SetPropertyChanged(ref _secondname, value, nameof(Secondname));
        }
        public string Lastname
        {
            get => _lastname;
            set => SetPropertyChanged(ref _lastname, value, nameof(Lastname));
        }
        public string Phone
        {
            get => _phone;
            set => SetPropertyChanged(ref _phone, value, nameof(Phone));
        }
        public string Email
        {
            get => _email;
            set => SetPropertyChanged(ref _email, value, nameof(Email));
        }
        public string Address
        {
            get => _address;
            set => SetPropertyChanged(ref _address, value, nameof(Address));
        }
        public ObservableCollection<Customers> Customerss
        {
            get => _customers;
            set => SetPropertyChanged(ref _customers, value, nameof(Customerss));
        }
        public Customers SelectedCustomer
        {
            get => _selectedcustomer;
            set => SetPropertyChanged(ref _selectedcustomer, value, nameof(SelectedCustomer));
        }
        public Customers NewCustomer
        {
            get => _newcustomer;
            set => SetPropertyChanged(ref _newcustomer, value, nameof(NewCustomer));
        }
        public MainWindowViewModel()
        {
            Customerss = new ObservableCollection<Customers>();
            NewCustomer = new Customers();
        }
        public void LoadCustomers()
        {
            Customerss.Clear();
            using (var context = new ServiceCenterEntities())
            {
                var list = context.Customers.ToList();
                foreach (var customers in list)
                {
                    Customerss.Add(customers);
                }
            }
        }
        public void DeleteCustomer()
        {
            try
            {



                using (var context = new ServiceCenterEntities())
                {
                    var delDevice = context.Devices.Where(dd=>dd.CustomerID==SelectedCustomer.CustomerID).ToList();
                            
                    foreach (var device in delDevice)
                    {
                       var delOrder = context.ServiceOrders.Where(o => o.DeviceID == device.DeviceID).ToList();
                       context.ServiceOrders.RemoveRange(delOrder);
                       context.Devices.Remove(device);
                    }
                    var delCustomer = context.Customers.FirstOrDefault(c => c.CustomerID == SelectedCustomer.CustomerID);
                    if(delCustomer!=null)
                    {
                       context.Customers.Remove(delCustomer);
                       context.SaveChanges();
                       LoadCustomers();
                       MessageBox.Show("Запись о клиенте удалена!","Прошу заметить",MessageBoxButton.OK,MessageBoxImage.Information);
                    } 
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }
        public bool AddNewCustomer()
        {
            using(var context = new ServiceCenterEntities())
            {
                var newCustomer = context.Customers.Add(NewCustomer);
                context.SaveChanges();
                return true;
            }
        }
    }
}
