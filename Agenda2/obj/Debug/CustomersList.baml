   M S B A M L   `   `   `  ����B  >Agenda2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:Agenda2Agenda2  5          Agenda2.CustomersList   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:Agenda2     5      -   5          N� Title$  CustomersList��5	       � 	Resources 5
         customerViewSource��%   &	        �� 5   
   6   5       N� 
Background 5      �� 5   
    �� ImageSource$; 5C:\Users\Moi\Desktop\WPF_Agenda2\Agenda2\img\list.jpg��6    j� Stretch$
 Fill=�6Y    j� TileMode$
 None=�6h   .��5      �  � DataContext# [  6   .+�5   
   �� $��Liste des clients��6   $��48(�6-   $��Center=�6;   $��EucrosiaUPC)�6X   $
��Bold"�6q   $��19,27,285,0q�6�   $	��496��6�    �� TextAlignment$ Center=�6�   ���	#FFF7E6E66�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ customerDataGrid��5      $��Center=�6-   	   AutoGenerateColumns	 .  
   EnableRowVirtualization
 . $��19,140,285,142q�6�   $	��496��6�      
IsReadOnly . ��6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        budgetColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Budget��5   V      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6f   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *Budget+6f     5      -   5        customerIDColumn��   
IsReadOnly . $ Customer ID��5   p   $ * 6�    6?   �� *
CustomerID+6�     5      -   5        firstnameColumn��$ 	Firstname��5   \   $ * 6o    6>   �� *	Firstname+6o     5      -   5        lastnameColumn��$ Lastname��5   Z   $ * 6l    6=   �� *
Lastname+6l     5      -   5        
mailColumn��$
 Mail��5   R   $ * 6`    69   �� *Mail+6`     5      -   5        phoneNumberColumn��$ Phone Number��5   `   $ * 6v    6@   �� *PhoneNumber+6v   5      �� 5   
   $��Modifier client��6   $��48(�6+   $��Center=�69   $��EucrosiaUPC)�6V   $
��Bold"�6o   $	��236��6�   $ Center=�6�   $��520,27,44,142q�6�   ���	#FFF5EEEE6�   � 5    
   -	   5         �Name$ grid1��5       $
��Left=�6   $��520,140,0,0q�69   $	��Top=�6N   $	��242��6f   $	��252��6s    � ColumnDefinitions 5!      �� 5"      $
��Auto �6#   �� 5#      $
��Auto �6#    � RowDefinitions 5%      �� 5&      $
��Auto �6    �� 5'      $
��Auto �6    �� 5(      $
��Auto �6    �� 5)      $
��Auto �6    �� 5*      $
��Auto �6    �� 5+      $
��Auto �6    �� 5,      $
��Auto �6    .+�5.      �� $��Budget:��6   $��0��6&   $
��Left=�66   $��3q�6Q   $��0��6\   $��Center=�6i   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5/      -
   5         ��Name$ budgetTextBox��5/      $��1��6-   $
��Left=�6=   $��23��6X   $��3,5,-9,5q�6d   $��0��6v   $��Center=�6�   $	��133��6�   ��6�   �� *Budget+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6�   �� 50      $��
Firstname:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��1��6_   $��Center=�6l   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 51      -   5        $ firstnameTextBox��51      $��1��60   $
��Left=�6@   $��23��6[   $��3,5,-8,5q�6g   $��1��6y   $��Center=�6�   $	��133��6  ��6�   �� *	Firstname+$ TwoWay=� .  . 6  �� 52      $��	Lastname:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��2��6^   $��Center=�6k   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 53      -   5        $ lastnameTextBox��53      $��1��6/   $
��Left=�6?   $��23��6Z   $��3,5,-7,5q�6f   $��2��6x   $��Center=�6�   $	��133��6  ��6�   �� *
Lastname+$ TwoWay=� .  . 6  �� 54      $��Mail:��6   $��0��6$   $
��Left=�64   $��3q�6O   $��3��6Z   $��Center=�6g   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 55      -   5        $ mailTextBox��55      $��1��6+   $
��Left=�6;   $��23��6V   $��3,5,-6,5q�6b   $��3��6t   $��Center=�6�   $	��133��6�   ��6�   �� *Mail+$ TwoWay=� .  . 6�   �� 56      $��Phone Number:��6   $��0��6,   $
��Left=�6<   $��3q�6W   $��4��6b   $��Center=�6o   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 57      -   5        $ phoneNumberTextBox��57      $��1��62   $
��Left=�6B   $��23��6]   $��3,5,-5,5q�6i   $��4��6{   $��Center=�6�   $	��133��6  ��6�   �� *PhoneNumber+$ TwoWay=� .  . 6  �� 58      $��Customer ID:��6   $��0��6+   $
��Left=�6;   $��3q�6V   $��5��6a   $��Center=�6n   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 59      -   5        $ customerIDTextBox��59       �� 
IsReadOnly . $��1��6C   $
��Left=�6S   $��23��6n   $��3,5,-4,5q�6z   $��5��6�   $��Center=�6�   $	��133��6  ��6�   �� *
CustomerID+$ TwoWay=� .  . 6  �� 5:      -   5         ��Name$ 	BtnModify��5:      $��Modifier��6(   $
��Left=�6;   $��15,8,0,0q�6V   $��6��6h   $	��Top=�6u   $��75��6�   ���	#FF5A6A8D
����������	#FF21BF4C6�   �� 5;      -   5        $ 	BtnDelete��5;      $��	Supprimer��6(   $��1��6<   $
��Left=�6L   $��51,8,0,0q�6g   $��6��6y   $	��Top=�6�   $��75��6�   ���	#FF5A6A8D���	#FFF00000���	#FFF00000$
��Bold"�6  5=      5>      5?      