   M S B A M L   `   `   `  ����B  >Agenda2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:Agenda2Agenda2  5          Agenda2.AddBroker   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:Agenda2     5        N� Title$  	AddBroker��5	       N� 
Background
 ����� � 	Resources 5
         brokerViewSource��%   &	        �� 5   
   6   5      .��5      � ��5   
   �� 5       �� ImageSource$ img/addcustomer.jpg��6   .+�5   
   �� $	��421��6   $	��Top=�6!   $��183,20,196,0q�69   $��Center=�6O   $	��420��6l   .+�5      �� $��Ajouter un courtier��6   $��48(�63   $��Center=�6A   $��EucrosiaUPC)�6^   $
��Bold"�6w   $��0,0,0,23q�6�   � 5      -   5         �Name$ grid1��5       � DataContext# [  6"   $��center=�6R   $	��Top=�6o   $	��171��6�   $	��401��6�   $
��10,0q�6�    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'    � RowDefinitions 5      �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   .+�5      �� $��	Prénom :��6   $��0��6+   $
��Left=�6;   $��3q�6V   $��0��6a   $��Center=�6n   �� 5       -   5         ��Name$ firstnameTextBox��5       $��1��64   $
��Left=�6D   $��23��6_   $��	3,5,-47,5q�6k   $��0��6~   $��Center=�6�   $	��319��6  ��6�   �� *	Firstname+	 �� Mode$	 OneWayToSource=�
 �� NotifyOnValidationError
 .  �� ValidatesOnExceptions . 6  �� 5!      $��Nom :��6   $��0��6(   $
��Left=�68   $��3q�6S   $��1��6^   $��Center=�6k   �� 5"      -   5        $ lastnameTextBox��5"      $��1��63   $
��Left=�6C   $��23��6^   $��	3,5,-46,5q�6j   $��1��6}   $��Center=�6�   $	��319��6  ��6�   �� *
Lastname+$	 OneWayToSource=�
 .  . 6  �� 5#      $��Mail:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��2��6^   $��Center=�6k   �� 5$      -   5        $ mailTextBox��5$      $��1��6/   $
��Left=�6?   $��23��6Z   $��	3,5,-45,5q�6f   $��2��6y   $��Center=�6�   $	��319��6  ��6�   �� *Mail+$	 OneWayToSource=�
 .  . 6  �� 5%      $��Téléphone :��6   $��0��6.   $
��Left=�6>   $��3q�6Y   $��3��6d   $��Center=�6q   �� 5&      -   5        $ phoneNumberTextBox��5&      $��1��66   $
��Left=�6F   $��23��6a   $��	3,5,-44,5q�6m   $��3��6�   $��Center=�6�   $	��319��6  ��6�   �� *PhoneNumber+$	 OneWayToSource=�
 .  . 6  5'      �� 5(      -   5         ��Name$
 Save��5(      ���	#FF4B6AA2
�������$	��Top=�6M   $	��121��6e   $��Enregistrer��6�   $��150,10,151,5q�6�   �� 5)      -   5        $ Cancel��5)      ���	#FFD81E1E
�������$	��Top=�6O   $	��121��6g   $��Annuler��6�   $��150,0q�6�   5+      5,      5-      