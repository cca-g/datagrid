   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � $��0,0,2,0q�6    J� OpacityMask 5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ Black��6    � Offset$ 0Q�6-   � 5      $ White��6   $ 1Q�6-   5      .+�5   
   �� -   5        $'��!Заполнить таблицу��5      $
��Left=�6-   $��139,388,0,0q�6H   $	��Top=�6]   $	��129��6u   4  .System.Windows.Automation.AutomationProperties   Name$	 but��6�   $��Center=�6�   �� 5   
   -   5        $��Поиск ошибки ��5      $
��Left=�6)   $��293,388,0,0q�6D   $	��Top=�6Y   $	��118��6q   6}   �� 5   
   -   5         ��Name$	 Min��5      $
��Left=�6   $��23��6:   $��	44,73,0,0q�6F    �� TextWrapping$
 Wrap=�6Y   $	��Top=�6m   $��60��6�   �� 5   
   -   5        $	 Max��5      $
��Left=�6   $��23��6:   $��
44,127,0,0q�6F   $
 Wrap=�6Z   $	��Top=�6n   $��60��6�   �� 5   
   $	��Min��6   $
��Left=�6   $��	44,47,0,0q�69   $	��Top=�6L   �� 5   
   $	��Max��6   $
��Left=�6   $��
44,101,0,0q�69   $	��Top=�6M   �� 5   
   -   5        $��Удалить��5      $
��Left=�6#   $��450,388,0,0q�6>   $	��Top=�6S   $	��139��6k   6w   &   System.Windows.Controls.DataGrid  5   
   -   5        	  Name$	 datagrid��5      $
��Left=�6%   $	��322��6@   $��
176,22,0,0q�6M   $	��Top=�6a   $	��400��6y   ���	#FFFBFBFB
   EnableRowVirtualization
 .  6�   5      5      