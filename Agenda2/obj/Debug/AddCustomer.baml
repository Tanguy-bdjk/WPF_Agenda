   M S B A M L   `   `   `  ����B  >Agenda2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:Agenda2Agenda2  5          Agenda2.AddCustomer   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:Agenda2     5        N� Title$  Ajouter un client��5	       N� 
Background
 ����� � 	Resources 5
         customerViewSource��%   &	        �� 5   
   6   5      .��5      � ��5   
   �� 5       �� ImageSource$ img/addcustomer.jpg��6   .+�5   
   �� $	��421��6   $	��Top=�6!   $��183,20,196,0q�69   $��Center=�6O   $	��420��6l   .+�5      �� $��Ajouter un client��6   $��48(�61   $��Center=�6?   $��EucrosiaUPC)�6\   $
��Bold"�6u   $��0,0,0,23q�6�   � 5      -   5         �Name$ grid1��5       � DataContext# [  6"   $��center=�6T   $	��Top=�6q   $	��171��6�   $	��360��6�    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'    � RowDefinitions 5      �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   .+�5       �� $��Budget:��6   $��0��6*   $
��Left=�6:   $��3q�6U   $��4��6`   $��Center=�6m   �� 5!      -   5         ��Name$ budgetTextBox��5!      $��1��61   $
��Left=�6A   $��24��6\   $��
3,5,-134,5q�6h   $��4��6|   $��Center=�6�   $	��268��6  ��6�   �� *Budget+	 �� Mode$	 OneWayToSource=�
 �� NotifyOnValidationError
 .  �� ValidatesOnExceptions . 6  �� 5"      $��	Prénom :��6   $��0��6+   $
��Left=�6;   $��3q�6V   $��1��6a   $��Center=�6n   �� 5#      -   5        $ firstnameTextBox��5#      $��1��64   $
��Left=�6D   $��22��6_   $��
3,6,-131,6q�6k   $��1��6   $��Center=�6�   $	��268��6  ��6�   �� *	Firstname+$	 OneWayToSource=�
 .  . 6  �� 5$      $��Nom :��6   $��0��6(   $
��Left=�68   $��3q�6S   $��0��6^   $��Center=�6k   �� 5%      -   5        $ lastnameTextBox��5%      $��1��63   $
��Left=�6C   $��22��6^   $��
3,6,-130,7q�6j   $��0��6~   $��Center=�6�   $	��268��6  ��6�   �� *
LastName+$	 OneWayToSource=�
 .  . 6  �� 5&      $��Mail:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��2��6^   $��Center=�6k   �� 5'      -   5        $ mailTextBox��5'      $��1��6/   $
��Left=�6?   $��22��6Z   $��
3,6,-132,6q�6f   $��2��6z   $��Center=�6�   $	��268��6  ��6�   �� *Mail+$	 OneWayToSource=�
 .  . 6  �� 5(      $��Téléphone :��6   $��0��6.   $
��Left=�6>   $��3q�6Y   $��3��6d   $��Center=�6q   �� 5)      -   5        $ phoneNumberTextBox��5)      $��1��66   $
��Left=�6F   $��22��6a   $��
3,6,-133,6q�6m   $��3��6�   $��Center=�6�   $	��268��6  ��6�   �� *PhoneNumber+$	 OneWayToSource=�
 .  . 6  5*      �� 5+      -   5         ��Name$
 Save��5+      ���	#FF4B6AA2
�������$	��Top=�6M   $	��121��6e   $��Enregistrer��6�   $��150,10,151,5q�6�   �� 5,      -   5        $ Cancel��5,      ���	#FFD81E1E
�������$	��Top=�6O   $	��121��6g   $��Annuler��6�   $��150,0q�6�   5.      50      51      