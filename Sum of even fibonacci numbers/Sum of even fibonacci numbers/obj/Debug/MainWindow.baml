   M S B A M L   `   `   `  ����U  QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf  5   	   X TSum of even fibonacci numbers, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:Sum_of_even_fibonacci_numbersSum_of_even_fibonacci_numbers 5   	   .   (Sum_of_even_fibonacci_numbers.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5   	   =local+clr-namespace:Sum_of_even_fibonacci_numbers     5   	     � Title$  	Fibonacci��5	   	   $��699.59��6   $��1326.23��6+   .��5
      � $��	-20,0,2,1q�6    J� RenderTransformOrigin$ 0.506,0.508&�6   .+�5   
   �� -   5         ��Name$ button��5      $��Calculate Fibonacci��6!   $
��Left=�6?   $��	66,47,0,0q�6Z   $	��Top=�6m   $	��169��6�   $ -0.41,0.789&�6�   $��33��6�   �� 5   
   -   5         ��Name$ TBFib��5      $
��Left=�6!   $��
66,116,0,0q�6<    �� TextWrapping$
 Wrap=�6P   $	��584��6d   $	��130��6p   $	��Top=�6}   �� 5   
   -   5        $ 	TBEvenFib��5      $
��Left=�6%   $��
72,296,0,0q�6@   $
 Wrap=�6T   $	��584��6h   $	��130��6t   $	��Top=�6�   �� 5   
   -   5         ��Name$
 LFib��5      $��	Fibonacci��6   $
��Left=�62   $��	66,85,0,0q�6M   $��64��6`   $��26��6k   $	��Top=�6w   �� 5   
   -   5         ��Name$ slider��5      $��418,54,52,0q�6!   $	��Top=�66   $��26��6N    �� AutoToolTipPlacement$ TopLeft=�6Z    �� AutoToolTipPrecision$ 0��6y   	 � Maximum$	 10000000Q�6�   
 � Minimum$
 1Q�6�    � SmallChange$ 1Q�6�    � Value$ 5000000Q�6�    � LargeChange$
 1000Q�6�   6�   �� 5   
   -   5        $ label��5      $��Not exceed Limiter: ��6   $��417,27,517,0q�6>   $	��Top=�6T   $ 0.367,0.523&�6l   $��27��6�   z�5      V� 5      .~�5      �� �� 5       �� AngleX$ -0.003Q�6$   �� 5       �� Angle$ -0.015Q�6&   T� 5       T� X$ 0.001Q�6)    T� Y$ 0.023Q�63   5      5      �� 5   
   -   5        $ LEvenFib��5      $��Even Fibonacci��6"   $
��Left=�6;   $��
72,265,0,0q�6V   $��89��6j   $��26��6u   $	��Top=�6�   �� 5   
   -   5        $ LLimitValue��5      $�� ��6%   $
��Left=�60   $��
538,23,0,0q�6K   $	��Top=�6_   �� 5   
   -	   5        $ TBNotEvenFib��5      $
��Left=�6(   $��
78,465,0,0q�6C   $
 Wrap=�6W   $	��578��6k   $	��138��6w   $	��Top=�6�   �� 5   
   -
   5        $ LNotEvenFib��5      $��Not Even Fibonacci��6%   $
��Left=�6B   $��
66,434,0,0q�6]   $	��128��6q   $��26��6}   $	��Top=�6�   �� 5   
   -   5        $ LEvenSum��5      $�� ��6"   $
��Left=�6-   $��178,265,0,0q�6H   $	��Top=�6]   $	��472��6u   �� 5    
   -   5        $ LNotEvenSum��5       $�� ��6%   $
��Left=�60   $��199,434,0,0q�6K   $	��Top=�6`   $	��451��6x   � 5!   
   $��712,0,52,79q�6   $	��211��6$   $��Bottom=�61   .+�5"      #   LiveCharts.Wpf.CartesianChart  &    LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Right=�6F   $��
0,10,0,-34q�6]   $��3��6q      Series 6!   �� *Series1Collection+   AxisY 5$         LiveCharts.Wpf.Axis     Title$ 	Sequence ��6      LabelFormatter 61   �� *
YFormatter+6Y   5&      5'      � 5)   
   $��712,116,52,295q�6   .+�5*        $ Right=�6E   $��-15,-14,0,10q�6\    6!   �� *SeriesCollection+ 5,        $ Sequence��6      Labels 60   �� *Labels+6L      AxisX 5/        $ n��6    6)   �� *Labels+6E   51      52      53      54      