   M S B A M L   `   `   `  ����W  SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   DataGridRowStyle1  �� 
TargetType)   #System.Windows.Controls.DataGridRow �� Property �� Value �� 
TargetType ��Name J� SnapsToDevicePixels?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid � ColumnDefinitions � RowDefinitions?  9System.Windows.Controls.Primitives.DataGridCellsPresenter    
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter	    DetailsVisibility$
   SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientation   Vertical �� ConverterParameter&   System.Windows.Controls.DataGrid#   RowDetailsScrollingConverter �� 	Converter �� RelativeSource �� AncestorType:  4System.Windows.Controls.Primitives.DataGridRowHeader7  1System.Windows.Controls.DataGridHeadersVisibility
   Row!   HeadersVisibilityConverter �� Triggers P� Property P� Value  ColumnHeaderGripperStyle �� Padding  DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader % !DataGrid.Column.Header.Background n�Name �� 
ResourceId �� TypeInTargetAssembly ��Name �Name J� Opacity � Points �� Stretch �� Triggers  �� 
TargetName! ��Name"   SelectAllCommand
#   AllG	  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter$ 	 Name%   Column& ��Name' �� CanContentScroll( ��Name) �� ScrollableHeight* � Maximum+ �� Orientation, �� ViewportHeight- �� ViewportSize*. �� #ComputedVerticalScrollBarVisibility/ � Value0 �� Mode1 �� ScrollableWidth2 �� ViewportWidth,3 �� %ComputedHorizontalScrollBarVisibility4 ]� 
Conditions5 �� Property6 �� Value�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      :x,http://schemas.microsoft.com/winfx/2006/xaml      5      %d  &	        &	 _    &	 q    7  7  (�� M    5G      $" DataGridSelectAllButtonStyle��"  )'  
    �� 5      "    6&   .�5   
   ��  � ��# � ��6'   �� 5   
    �@J�SnapsToDevicePixels$
 true��60   �� 5   
    �@=�ErrorTemplate 65   Z� �� 5   
    �@  ValidationErrorTemplate 5	      �� 5
      .R�5      �� 
���  ��$��2,0,0,0q�61   $��!��6B   $��Center=�6K   5      5      �� 5   
    � �� 5      �� 5      "   6"   .R�5      �� $ 
DGR_Border��6   #��z��61   #��z��6[   #��z��6�   $
 True��6�   ._�5         5      �� 5   "   $
��Auto �63   �� 5   "   $��* �63    5      �� 5   "   $��* �60   �� 5   "   $
��Auto �60   .+�5        $��1��65   #��z 6E   # z 6o     5      $��1��67   $��1��6G   #y�z	 6k  
 6T   �� *AreRowDetailsFrozen+# Z # Z  �� "  6k    5      $��2��60   $
 Vertical=�6A   y�6�   �� *HeadersVisibility+# Z # Z  �� "  5      5       5!      5#       5$   
   P� 5%       �@  	IsNewItem$
 True��6+   . �5&      ��  � �� 6+   �� *NewItemMargin+ �� "  5'      5)      �� 5*      "  n�6-   .�5+   
   ��  � ��$ 8��6"   �� 5,   
    � ��
 ���� 6'   �� 5-   
    �@�Cursor$ SizeWE��6#   �� 5.   
    � �� 5/      �� 50      " n�6"   .R�51      �� #��z��6   # z��6G   52      54      55      �� 56      "   6/   .�57   
   ��  � ��# �  6'   �� 58   
    � ��$
 Bold"�6'   �� 59   
    � ��$ 10q�6$   �� 5:   
    � ��$ 25��6&   �� 5;   
    � ��$ Center=�65   �� 5<   
    � �� 5=      �� 5>      "  6"   .R�5?      � .+�5@      n� $ PART_LeftHeaderGripper��6    $
��Left=�6@   8��  6[   n� 5A      $ PART_RightHeaderGripper��6    $��Right=�6A   8�� 6]   5B      5C      5E      5F      �� 5G      "  ��6{   .�5H   
   ��  � �� 5I      �� 5J      " ��6"   .R�5K      � .+�5L      �� $ Border��6$   #��� ��64   $
 True��6u   � 5M      $ Arrow��6"   
���   �$��Right=�6>   $��8,8,3,3q�6Z   $
 0.15Q�6k    �   ��� ��� ��� ��� $ Uniform=�6�   $��Bottom=�6�   5N       5O      P� 5P       �@J�IsMouseOver$
 True��69   . �5Q      �� $  Border��67   # � ��6K    � ��5R      P� 5S       � ��$
 True��67   . �5T      �� $  Border��65   # � ��6I    � ��5U      P� 5V       � {�$ False��67   . �5W      �� $  Arrow��6;    � y�$ 	Collapsed=�6N   5X      5Z      5\      5]      �� 5^      "   6   .�5_   
   ��  �@ RowBackground �#E3E1E25`      �� 5a   
    � �� �#B1B0B06'   �� 5b   
    � ��$ 0q�6,   �� 5c   
    � ��# � ��6'   �� 5d   
    � �� �	#FF688CAF6(   �� 5e   
    � ��$ 0q�6,   �� 5f   
    �@ GridLinesVisibility$ 
Horizontal=�60   �� 5g   
     �@ HorizontalGridLinesBrush �#D4D2D265   �� 5h   
    �@ HeadersVisibility$ Column=�6.   �� 5i   
     �@ RowDetailsVisibilityMode$ VisibleWhenSelected=�65   �� 5j   
    � ��$ false��6:   �� 5k   
    �@ SelectionMode$ Single=�6*   �� 5l   
    �@��PanningMode$
 Both=�65   �� 5m   
    �@��IsFlicksEnabled$ False��63   �� 5n   
    � �� 5o      �� 5p      "  6"   .R�5q      �� #��z��6   #��z��6G   #��z��6s   # z��6�   $
 True��6�   ._�5r      �� $! DG_ScrollViewer��6'   $|�false��6@   ��5s      �� 5t   "   " ��62   .R�5u   &   �  5v   *   �� 5w   .   $
��Auto �6?   �� 5x   .   $��* �6?   �� 5y   .   $
��Auto �6?    5{   *   �� 5|   .   $
��Auto �6<   �� 5}   .   $��* �6<   �� 5~   .   $
��Auto �6<   .+�5�   *   �� #��Z" 61   $|�false��6`   ��6r   C� *�� $" DataGridSelectAllButtonStyle��"  +y�6�   �� *HeadersVisibility+# Z# # Z  �� "  ��6�  �� *CellsPanelHorizontalOffset+ �� "  	  5�   *   $!$ PART_ColumnHeadersPresenter��6I   $��1��6n   y�6~   �� *HeadersVisibility+# Z% # Z  �� "  �� 5�   *   $!& PART_ScrollContentPresenter��6A   #' z��6f   $��2��6�   $��1��6�   �� 5�   *   $( PART_VerticalScrollBar��64   $��2��6T   #* z) 6d   $+ Vertical=�6�   $��1��6�   #- z, 6  #y�z. 6D  / 6�   �� *VerticalOffset+$0 OneWay=� �� *TemplatedParent+6D  � 5�   *   $��1��6/   $��2��6?    5�   .   �� 5�   2   ��6C   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� 5�   2   $��* �6C   .+�5�   .   �� $( PART_HorizontalScrollBar��68   $��1��6Z   #* z1 6j   $+ 
Horizontal=�6�   #- z2 6  #y�z3 6?  / 6�   �� *HorizontalOffset+$0 OneWay=� �� *TemplatedParent+6?  5�   +   5�   '   5�   #   .��5�      �� # z 6-   5�      5�      5�      5�       5�   
   ]� 5�      4 5�      �� 5�      5 �@��
IsGrouping$
6 true��66   �� 5�      "5 �@%�IsVirtualizingWhenGrouping$6 false��6X   ./�5�      ��  � ��$ false��6B   5�      5�      5�      