   M S B A M L   `   `   `  ���� W  SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   DataGridRowStyle1  �� 
TargetType)   #System.Windows.Controls.DataGridRow �� Property �� Value �� 
TargetType ��Name J� SnapsToDevicePixels?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid � ColumnDefinitions � RowDefinitions?  9System.Windows.Controls.Primitives.DataGridCellsPresenter    
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter	    DetailsVisibility$
   SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientation   Vertical �� ConverterParameter&   System.Windows.Controls.DataGrid#   RowDetailsScrollingConverter �� 	Converter �� RelativeSource �� AncestorType:  4System.Windows.Controls.Primitives.DataGridRowHeader7  1System.Windows.Controls.DataGridHeadersVisibility
   Row!   HeadersVisibilityConverter �� Triggers P� Property P� Value  ColumnHeaderGripperStyle �� Padding  DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader % !DataGrid.Column.Header.Background n�Name �� 
ResourceId �� TypeInTargetAssembly ��Name �Name J� Opacity � Points �� Stretch �� Triggers  �� 
TargetName! ��Name"   SelectAllCommand
#   AllG	  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter$ 	 Name%   Column& ��Name' �� CanContentScroll( ��Name) �� ScrollableHeight* � Maximum+ �� Orientation, �� ViewportHeight- �� ViewportSize*. �� #ComputedVerticalScrollBarVisibility/ � Value0 �� Mode1 �� ScrollableWidth2 �� ViewportWidth,3 �� %ComputedHorizontalScrollBarVisibility4 ]� 
Conditions5 �� Property6 �� Value�� F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      :x,http://schemas.microsoft.com/winfx/2006/xaml      %�  &	        &	 �    &	 ,    7  7  (�� 7    $" DataGridSelectAllButtonStyle��"  )'  �    �� "    .���  � ��# � ����  �@J�SnapsToDevicePixels$
 true����  �@=�ErrorTemplate Z� ��  �@  ValidationErrorTemplate �� .R��� 
���  ��$��2,0,0,0q�$��!��$��Center=���  � �� �� "   .R��� $ 
DGR_Border��#��z��#��z��#��z��$
 True��._�   �� $
��Auto ��� $��* � �� $��* ��� $
��Auto �.+�  $��1��#��z # z   $��1��$��1��#y�z	 
 �� *AreRowDetailsFrozen+# Z # Z  �� "    $��2��$
 Vertical=�y��� *HeadersVisibility+# Z # Z  �� "   P�  �@  	IsNewItem$
 True��. ���  � �� �� *NewItemMargin+ �� "  �� "  n�.���  � ��$ 8����  � ��
 ���� ��  �@�Cursor$ SizeWE����  � �� �� " n�.R��� #��z��# z���� "   .���  � ��# �  ��  � ��$
 Bold"���  � ��$ 10q���  � ��$ 25����  � ��$ Center=���  � �� �� "  .R�� .+�n� $ PART_LeftHeaderGripper��$
��Left=�8��  n� $ PART_RightHeaderGripper��$��Right=�8�� �� "  ��.���  � �� �� " ��.R�� .+��� $ Border��#��� ��$
 True��� $ Arrow��
���   �$��Right=�$��8,8,3,3q�$
 0.15Q� �   ��� ��� ��� ��� $ Uniform=�$��Bottom=� P�  �@J�IsMouseOver$
 True��. ��� $  Border��# � �� � ��P�  � ��$
 True��. ��� $  Border��# � �� � ��P�  � {�$ False��. ��� $  Arrow�� � y�$ 	Collapsed=��� "   .���  �@ RowBackground �#E3E1E1��  � �� �#B1B0B0��  � ��$ 0q���  � ��# � ����  � �� �	#FF688CAF��  � ��$ 0q���  �@ GridLinesVisibility$ 
Horizontal=���   �@ HorizontalGridLinesBrush �#D4D2D2��  �@ HeadersVisibility$ Column=���   �@ RowDetailsVisibilityMode$ VisibleWhenSelected=���  � ��$ false����  �@ SelectionMode$ Single=���  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled$ False����  � �� �� "  .R��� #��z��#��z��#��z��# z��$
 True��._��� $! DG_ScrollViewer��$|�false������ " ��.R��  �� $
��Auto ��� $��* ��� $
��Auto � �� $
��Auto ��� $��* ��� $
��Auto �.+��� #��Z" $|�false����C� *�� $" DataGridSelectAllButtonStyle��"  +y��� *HeadersVisibility+# Z# # Z  �� "  ���� *CellsPanelHorizontalOffset+ �� "  	  $!$ PART_ColumnHeadersPresenter��$��1��y��� *HeadersVisibility+# Z% # Z  �� "  �� $!& PART_ScrollContentPresenter��#' z��$��2��$��1���� $( PART_VerticalScrollBar��$��2��#* z) $+ Vertical=�$��1��#- z, #y�z. / �� *VerticalOffset+$0 OneWay=� �� *TemplatedParent+� $��1��$��2�� �� ���� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� $��* �.+��� $( PART_HorizontalScrollBar��$��1��#* z1 $+ 
Horizontal=�#- z2 #y�z3 / �� *HorizontalOffset+$0 OneWay=� �� *TemplatedParent+.���� # z  ]� 4 �� 5 �@��
IsGrouping$
6 true���� "5 �@%�IsVirtualizingWhenGrouping$6 false��./���  � ��$ false��