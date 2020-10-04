using System;
using System.Collections.Generic;
using System.Data;
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

namespace WpfApp1
{   
    public partial class MainWindow : Window
    {

        List<DataTabler> list = new List<DataTabler>();
        public MainWindow()
        {
            InitializeComponent();
        }
        public class DataTabler
        {
            public int A { get; set; }
            public int B { get; set; }
            public int C { get; set; }          
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            datagrid.ItemsSource = null;
            Random random = new Random();
            for (int i = 0; i < 30; i++)
            {
                list.Add(new DataTabler() { A = random.Next(150), B = random.Next(150), C = random.Next(150) });
            }
            datagrid.ItemsSource = list;
        }
        
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            
            coloritems();
        }
        int I_min, I_max;
        void coloritems()
        {
            int  I_columns, I_line ;        
            bool B_max, B_min;     
            DataGridCell cell; 
            TextBlock valuecell;

            B_max = Int32.TryParse(Max.Text, out I_max);
            B_min = Int32.TryParse(Min.Text, out I_min);
            I_columns = datagrid.Columns.Count;
            I_line = datagrid.Items.Count;

            if (B_max && B_min)
            {
                if (I_min < I_max)
                {
                    for (int i = 0; i < I_columns; i++)
                    {
                        for (int j = 0; j < I_line - 1; j++)
                        {
                            cell = GetCell(j, i);
                            valuecell = datagrid.Columns[i].GetCellContent(datagrid.Items[j]) as TextBlock;
                            if (I_min < Convert.ToInt32(valuecell.Text) && I_max > Convert.ToInt32(valuecell.Text))
                            {
                                if (cell != null)
                                    cell.Background = Brushes.Red;
                            }
                            else
                                 if (cell != null)
                                cell.Background = Brushes.Green;
                        }
                    }
                }
                else
                    MessageBox.Show("Введите корректный диапазон");
            }
            else
                MessageBox.Show("Введите диапазон");     
        }
      
        void clear()
        {                   
        
            datagrid.ItemsSource=null;
        }
     
        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            clear();
        }

        public DataGridCell GetCell(  int row, int column)
         {
            DataGridCellInfo dataGridCellInfo = new DataGridCellInfo(datagrid.Items[row], datagrid.Columns[column]);          
             var cellContent = dataGridCellInfo.Column.GetCellContent(dataGridCellInfo.Item);
            if (cellContent != null)
                return (DataGridCell)cellContent.Parent;
            else
                return null;                      
         }      
    }
}
