   M S B A M L   `   `   `  ����B  >WpfApp2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp2WpfApp2  5   	       WpfApp2.UserWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp2     5   	     � Title$  Активы��5   	   $	��450��6   $	��800��6%   .��5	      �  � RowDefinitions 5
   
   �� 5      $	��11* �6   �� 5      $	��20* �6   .+�5   
   � $��1��6   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgActive��5         AutoGenerateColumns .     
IsReadOnly . $��0,10,0,0q�6X   $��1��6j      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        Date_Add��,  &System.Windows.Controls.DataGridColumn   Header$# Дата добавдения��5   ;   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6T   �� *
Date_Add+5        5      -   5        Name��$ Названия��5   7    6I   �� *Name+6d     5      $ Цена��6)    67   �� *Price+6S     5      -   5        Category��$ Категория��5   ;    6N   �� *
Category+6m     5      -   5        Count_Ed��$ Единица��5   ;    6L   �� *
Count_Ed+6k     5      -   5        Discription��$ Описания��5   >    6P   �� *Discription+6r   5      5      (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ 	Date_Add1��5      $
��Left=�6(   $��	10,10,0,0q�6C   $	��Top=�6V   �� 5   
   -   5        	 ��Name$	 Name1��5   4   
 � ToolTip$2
 ,Введите название актива��6   $
��Left=�6C   $��	10,45,0,0q�6^    �� TextWrapping$
 Wrap=�6q   $��Рыбалка��6�   $	��Top=�6�   $	��120��6�   �� 5   
   -	   5        $	 Price��5   )   $
 Введите цену��6   $
��Left=�68   $��10,0,0,0q�6S   $
 Wrap=�6e   $��2400,22 руб��6y   $��Center=�6�   $	��120��6�   �� 5   
   -
   5        $	 category��5      $
��Left=�6%   $��	10,99,0,0q�6@   $
 Wrap=�6S   $��Категория��6g   $	��Top=�6x   $	��120��6�   �� 5   
   -   5        $	 count��5      $
��Left=�6!   $��
47,135,0,0q�6<   $
 Wrap=�6P   $��Единица��6d   $	��Top=�6s   $	��120��6�   �� 5    
   -   5        $	 discr��5       $
��Left=�6!   $��
310,77,0,0q�6<   $
 Wrap=�6P   $��Описание��6d   $	��Top=�6t   $	��120��6�   �� 5!   
   -   5        $	��Add��5!      $��Добавить��6   $
��Left=�6/   $��
562,61,0,0q�6J   $	��Top=�6^   6v   5"      5#      