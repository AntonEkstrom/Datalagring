   M S B A M L   `   `   `  ����Q  MCase_Management_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Case_Management_System.ViewsCase_Management_System.Views  5      /    )Case_Management_System.Views.MainPageView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:Case_Management_System.Views     5      .��5
      � ���#E7E7E7  � RowDefinitions  5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0 0 0 0q�6   $��0��6&   .+�5      �  � ColumnDefinitions 5      �� 5      �� 5      5      &   System.Windows.Controls.DataGrid  5      -   5          Name$ 	datagrid2��5         DataGridItemTemplate   RowStyle# �   5         ColumnHeaderStyle# �   6I      
IsReadOnly$
 True��5         AutoGenerateColumns$ False��5      $��
30 10 30 0q�5      $��0 0 0 0q�5      ��5      �� *Users+ �� UpdateSourceTrigger$ PropertyChanged=�   Columns 5       0  *System.Windows.Controls.DataGridTextColumn  5!      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Id��5"      
   MinWidth$
 30Q�5#         Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 5$      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5%      �� *Id+  5&      $	 Förnamn��5'      $	
 150Q�5(      $ * 5)         
FontWeight$ DemiBold"�5*       5+      �� *	FirstName+  5,      $	 	Efternamn��5-      $	
 150Q�5.      $ * 5/      $ DemiBold"�50       51      �� *
LastName+  52      $	 Epost-adress��53      $	
 250Q�54      $ * 55       56      �� *Email+  57      $	 Mobilnummer��58      $	
 150Q�59      $ * 5:       5;      �� *PhoneNumber+5=      5@      �� 5C   
   $��1��6   $��0 50 0 0q�6"   .+�5D      �  5E      �� 5F      �� 5G      5J      �� 5L      $��10 Senaste ärendena��6   $��15(�63   $��DemiBold"�6A    �� Padding$ 	30 10 0 0q�6W     5N      -   5        $ 	datagrid1��5O      # �   5N      # �   6I   $
 True��5P      $ False��5Q      $��
30 10 30 0q�5S      $��0 0 0 0q�5T      ��5R      �� *Cases+$ PropertyChanged=� 5U        5V      $	 Id��5W      $
 30Q�5X      $ 30 5Y       5Z      �� *Id+  5[      $	 Titel��5\      $	
 300Q�5]      $ * 5^      $ DemiBold"�5_       5`      �� *
HeadLine+  5a      $	 Beskrivning��5b      $	
 480Q�5c      $ * 5d       5e      �� *Description+  5f      $	 
Användare��5g      $	
 180Q�5h      $	 180 5i      $ DemiBold"�5j       5k      �� *	FirstName+  5l      $	 Status��5m      $	
 100Q�5n      $	 100 5o       5p      �� *
StatusName+  5q      $	 Datum��5r      $	
 150Q�5s      $	 100 5t       5u      �� *
DateTime+5x      5{      5|      5}      