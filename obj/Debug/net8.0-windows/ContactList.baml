   M S B A M L   `   `   `  ����F  BContactsApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:ContactsAppContactsApp  5   	       ContactsApp.ContactList   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:ContactsApp     5   	     � Title$  ContactList��5   	   $	��450��6   $	��800��6*   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��0��6.   $��10q�6;   .+�5      �� $��Search:��6   $��Center=�6&   $��0,0,5,0q�6A   �� 5      -   5         ��Name$ searchTextBox��5      $	��200��6-   69   5      �� 5   
   -   5         ��Name$ contactListView��5      $��1��6,   $��10q�69   ��5      �� 5      .R�5      �� .+�5      �� $��20(�6?   $
��Bold"�6M   ��6$   �� *	firstName+6M   �� 5      $��20(�6>   $
��Bold"�6L   ��6$   �� *
lastName+6L   �� 5      $��20(�6A   $��Italic$�6O   ��6$   �� *phoneNumber+6O   �� 5      $ 
Horizontal=�6%   $��5,0,0,0q�6>   .+�5      �� -   5        $��Update��5   %   
 � Tag 6Q   �� �� 5      -   5        $��Delete��5   %    6Q   �� 5      5      5      5       5!      5"      