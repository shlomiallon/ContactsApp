   M S B A M L   `   `   `  ����F  BContactsApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:ContactsAppContactsApp  5   	   "    ContactsApp.NewContactWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:ContactsApp     5   	     � Title$  NewContactWindow��5   	   $	��450��6"   $	��800��6/   .��5	      � $��10q�6    � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6   $	��ID:��6-   $��5q�6;   �� 5   
   -   5        $��	IDTextBox��5   /   $��0��6   $��1��6   $��5q�6@   �� 5   
   $��1��6   $��0��6   $��First Name:��6-   $��5q�6C   �� 5   
   -   5        $��FirstNameTextBox��5   /   $��1��6   $��1��6   $��5q�6G   �� 5    
   $��2��6   $��0��6   $��
Last Name:��6-   $��5q�6B   �� 5!   
   -   5        $��LastNameTextBox��5!   /   $��2��6   $��1��6   $��5q�6F   �� 5$   
   $��3��6   $��0��6   $��Company:��6-   $��5q�6@   �� 5%   
   -   5        $��CompanyTextBox��5%   /   $��3��6   $��1��6   $��5q�6E   �� 5(   
   $��4��6   $��0��6   $��Phone Number:��6-   $��5q�6E   �� 5)   
   -   5        $��PhoneNumberTextBox��5)   /   $��4��6   $��1��6   $��5q�6I   �� 5,   
   $��5��6   $��0��6   $��Email:��6-   $��5q�6>   �� 5-   
   -   5        $��EmailTextBox��5-   /   $��5��6   $��1��6   $��5q�6C   �� 50   
   -   5        $��6��50      $��1��6   $
��Save��6.   $��Center=�6=   $	��Top=�6Z   $��95��6r   $��0,33,0,0q�51   *   52      53      