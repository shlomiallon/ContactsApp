   M S B A M L   `   `   `  ����  ContactsApp%    ContactsApp.UpdateContactWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Update Contact��5   	   $	��300��6    $	��400��6-   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5	      $
��Auto �6   �� 5
      $
��Auto �6   .+�5   
   �� $��First Name:��6   $��0��6&   $��10q�63   �� 5   
   -   5         ��Name$ firstNameTextBox��5      $��0��6,   $��10q�69   $	��200��6E   ��6Q   �� *	firstName+ �� Mode$ TwoWay=��� 5   
   $��
Last Name:��6   $��1��6%   $��10q�62   �� 5   
   -   5        $ lastNameTextBox��5      $��1��6+   $��10q�68   $	��200��6D   ��6P   �� *
lastName+$ TwoWay=��� 5   
   $��Phone Number:��6   $��2��6(   $��10q�65   �� 5   
   -   5        $ phoneNumberTextBox��5      $��2��6.   $��10q�6;   $	��200��6G   ��6S   �� *phoneNumber+$ TwoWay=��� 5   
   -   5        $
��Save��5      $��3��6    $��10q�6-   $��Center=�6R   5      5      