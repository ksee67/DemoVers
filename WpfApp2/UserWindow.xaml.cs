using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;


namespace WpfApp2
{
      public partial class UserWindow : Window
    {
        /// Инициализация подключения к базе данных
        public FishDataBaseEntities db = new FishDataBaseEntities();
        public UserWindow()
        {
            InitializeComponent();
            LoadActive();
        }

        public void LoadActive()
        {
            var ActiveList = db.Active.ToList(); /// Обращение к бд, взятие данных из бд в лист
            dgActive.ItemsSource = ActiveList; /// Вывод данных листа в датагрид
            dgActive.SelectedValuePath = "ID_Active";
            dgActive.SelectionMode = DataGridSelectionMode.Single;

            Console.WriteLine($"Кол-во записей активов + {ActiveList.Count}"); /// Статистика на количесвто  записей в таблице Активы
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            /// Создание новго класса
            Active act = new Active
            {
                Date_Add = Date_Add1.SelectedDate.Value,
                Name = Name1.Text,
                Price = Price.Text,
                Count_Ed = count.Text,
                Category = category.Text,
                Discription = discr.Text,
            };
            db.Active.Add(act); /// Добавление в базу данных новго созданного класса данных
            db.SaveChanges();
            MessageBox.Show("Данные успешно добавлены!");
            LoadActive();
        }
    }
}
