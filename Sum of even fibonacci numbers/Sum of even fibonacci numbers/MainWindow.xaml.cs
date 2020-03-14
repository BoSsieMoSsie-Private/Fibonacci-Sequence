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
using System.Windows.Navigation;
using System.Windows.Shapes;
using LiveCharts;
using LiveCharts.Wpf;

namespace Sum_of_even_fibonacci_numbers
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {


        public MainWindow()
        {
            InitializeComponent();
            LLimitValue.Content = slider.Value.ToString("n0");

            SeriesCollection = new SeriesCollection { };
            Series1Collection = new SeriesCollection { };
        }

        public SeriesCollection SeriesCollection { get; set; }
        public SeriesCollection Series1Collection { get; set; }
        public string[] Labels { get; set; }
        public Func<double, string> YFormatter { get; set; }

        List<double> doublesFib { get; set; }
        List<double> doublesEvenSum { get; set; }
        List<double> doublesNotEvenSum { get; set; }
        List<double> dEvenSum { get; set; }
        List<double> dNotEvenSum { get; set; }

        private void button_Click(object sender, RoutedEventArgs e)
        {

            List<long> Fib = Fibonacci();
            List<long> EvenSum = new List<long>(Fib.FindAll(isEven));
            List<long> NotEvenSum = new List<long>(Fib.FindAll(isNotEven));
            List<double> dEvenSum = new List<double>();
            List<double> dNotEvenSum = new List<double>();

            TBFib.Text = string.Join(", ", Fib);
            TBEvenFib.Text = string.Join(", ", EvenSum);
            TBNotEvenFib.Text = string.Join(", ", NotEvenSum);
            LEvenSum.Content = $"Sum: {EvenSum.Sum()}";
            LNotEvenSum.Content = $"Sum: {NotEvenSum.Sum()}";

            doublesFib = Fib.Select(i => (double)i).ToList();
            doublesEvenSum = EvenSum.Select(i => (double)i).ToList();
            doublesNotEvenSum = NotEvenSum.Select(i => (double)i).ToList();

            dEvenSum.Add(EvenSum.Sum());
            dNotEvenSum.Add(NotEvenSum.Sum());

            SeriesCollection.Clear();
            Series1Collection.Clear();

            SeriesCollection.Add(new LineSeries
            {
                Title = "Fibonacci",
                Values = new ChartValues<double>(doublesFib),
                PointGeometry = DefaultGeometries.Circle
            });


            Series1Collection.AddRange
            (new List<LineSeries>() {
                new LineSeries
                {
                    Title = "Even Fibonacci",
                    Values = new ChartValues<double> (doublesEvenSum),
                    PointGeometry = DefaultGeometries.Square
                },
                new LineSeries
                {
                    Title = "Not Even Fibonacci",
                    Values = new ChartValues<double> (doublesNotEvenSum),
                    PointGeometry = DefaultGeometries.Diamond
                },
                new LineSeries
                {
                    Title = "Even Fibonacci Sum",
                    Values = new ChartValues<double> (dEvenSum),
                    PointGeometry = DefaultGeometries.Circle,
                    PointGeometrySize = 15
                },
                new LineSeries
                {
                    Title = "Not Even Fibonacci Sum",
                    Values = new ChartValues<double> (dNotEvenSum),
                    PointGeometry = DefaultGeometries.Triangle,
                    PointGeometrySize = 15
                }
            });

            DataContext = this;
        }

        private List<long> Fibonacci()
        {
            long a = 0;
            long b = 1;
            var list = new List<long>();

            while (b < slider.Value)
            {
                long temp = a;
                a = b;
                b = temp + b;
                list.Add(a);

            }
            return list;
        }

        private bool isEven(long i)
        {
            return ((i % 2) == 0);
        }

        private bool isNotEven(long i)
        {
            return ((i % 2) == 1);
        }

        private void slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            Slider slider = sender as Slider;
            if (LLimitValue != null)
                LLimitValue.Content = slider.Value.ToString("n0");
        }
    }

}
