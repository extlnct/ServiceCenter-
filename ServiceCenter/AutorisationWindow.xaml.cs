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
using ServiceCenter.ViewModel;

namespace ServiceCenter
{
    /// <summary>
    /// Логика взаимодействия для AutorisationWindow.xaml
    /// </summary>
    public partial class AutorisationWindow : Window
    {
        public AutorisationWindow()
        {
            
            InitializeComponent();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
        int sch = 0;
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            
            MessageBoxResult resultBox = MessageBox.Show("Твои жалкие попытки смешны).\n Попробуешь еще?", "Иди поплачь", MessageBoxButton.YesNo, MessageBoxImage.Asterisk);
            if (resultBox == MessageBoxResult.Yes)
            {
                switch (sch)
                {
                    case 0:
                        MessageBox.Show("Ну что-ж. Удачи :)", "Дурашка", MessageBoxButton.OK);
                        sch++;
                        break;
                    case 1:
                        MessageBox.Show("Ты все же попробовал еще раз.\n Ну-ну. Не надоест ли?", "Глупый",MessageBoxButton.OK);
                        sch++;
                        break;
                    case 2:
                        MessageBox.Show("Тебе правда еще надоело? Иди траву потрогай лучше)).", "Настырный?", MessageBoxButton.OK);
                        sch++;
                        break;
                    case 3:
                        MessageBox.Show("Может уже успокоишься?", "Неугомонный :/", MessageBoxButton.OK);
                        sch++;
                        break;
                    case 4:
                        MessageBoxResult resultBox2 = MessageBox.Show("Да ладно, ладно. Проходи. \n", "Достал",MessageBoxButton.YesNo);
                        { 
                            if(resultBox2 == MessageBoxResult.Yes)
                            {
                                MessageBox.Show("Надеюсь теперь ты счастлив.", ". . . . . . .", MessageBoxButton.OK);
                                MainWindow mainWindow = new MainWindow();
                                mainWindow.Show();
                                Close();      
                            }
                            else
                            {
                                MessageBox.Show("А РАДИ ЧЕГО ТЫ ЭТО ДЕЛАЛ?!\n Просто исчезни отсюда. Пока.", "ВОН!!!",MessageBoxButton.OK);
                                Close();
                            }
                        }
                        break;
                }
            }
            else
            {
                MessageBox.Show("Вот и умничка).\n Пока-пока)", "<3", MessageBoxButton.OK);
                Close();
            }
        }
    }
}
