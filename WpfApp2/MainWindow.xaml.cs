using System.Linq;
using System.Windows;

namespace WpfApp2
{
 
    public partial class MainWindow : Window
    {
        /// Инициализация подключения к базе данных
        public FishDataBaseEntities db = new FishDataBaseEntities();
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Enter_Click(object sender, RoutedEventArgs e)
        {
            /// Поиск данных логина и пароля в БД таблицы пользователей , сверка с введенных в текст боксы
            var User = db.Users.FirstOrDefault(u => u.Login == tbLogin.Text && u.Password == tbPassword.Password);

            if (User != null)
            {
                switch (User.RoleID)
                {
                    case 1:
                        new AdminWindow().Show();
                        break;
                    case 2:
                        new UserWindow().Show();
                        break;
                    default:
                        MessageBox.Show("Нет такой роли");
                        break;
                }
                this.Close();
                MessageBox.Show("Добро пожаловать");
            }
            else 
            {
                MessageBox.Show("Неверный логин или пароль!");
            }

        }
    }
}
