   M S B A M L   `   `   `  ����H  DServiceCenter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ServiceCenterServiceCenter  5   	   &     ServiceCenter.AutorisationWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:ServiceCenter     5   	     � Title$   ��5   	   $	��580��6   $	��400��6    � WindowStartupLocation$ CenterScreen=�6+   $	��550��6P   $	��380��6`   $	��600��6o   $	��420��6    � 	Resources 5	         FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground  ButtonStyleEnter �� 
TargetType	 �� 
TargetType
 ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName 	 TextBox.Static.Border 
 TextBox.MouseOver.Border  TextBox.Focus.Border  TextBoxStyle-  'System.Windows.Input.KeyboardNavigation ��Name �� Triggers ]� 
Conditions �� Property �� Value  TextBox.Static.Border1  TextBox.MouseOver.Border1  TextBox.Focus.Border1  PasswordBoxStyle��%�  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    7   7  7  7  7  7  7  7  &		 �    &	
 �    &	 "    &	 E    7 	 7 
 7  &	 S    &	 v    &	 �    &	 �    7  7  7  �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $	 1 2R�6/   #��� ��6E    . $��1��6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FF8DD1ED��6<   �� 5   
   $ 	#FF1A3140��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6)   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5       � ��# � ��6+   �� 5       � ��$ 1q�60   �� 5        � ��$ Center=�6;   �� 5!       � ��$ Center=�69   �� 5"       � ��$ 1q�6(   �� 5#       � �� 5$      �� 5%      "	 ��6&   .R�5&      �� $
 border��6!   #��z��61   $ 	5 50 5 50��6[   #��z��6t   #��z��6�    . ._�5'      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5(       5)      P� 5*       �@��IsDefaulted . . �5+   "   �� $ border��6@   # � ��6T    � ��5,      P� 5-       � �� . . �5.   "   �� $ border��6?   8   � ��6S   �� 5/   "   $ border��6@   8   � ��6T   50      P� 51       � {� .  . �52   "   �� $ border��6?   8   � ��6S   �� 53   "   $ border��6@   8   � ��6T   �� 54   "   $ contentPresenter��6K   8   � ��6i   55      57      59      5:      �� 5;   
   $ 	#FF9AA6CA��68   �� 5<   
   $ 	#FF7EB4EA��6;   �� 5=   
   $ 	#FF569DE5��67   �� 5>   
   " ��6%   .�5?      ��  � ��# � ��6+   �� 5@       � ��8   6,   �� 5A       � ��# � ��6+   �� 5B       � ��$ 1q�60   �� 5C       �@ TabNavigation$
 None=�6A   �� 5D       � ��$
 Left=�6;   �� 5E       �@�FocusVisualStyle 61   Z� �� 5F       �@J�	AllowDrop . 6*   �� 5G       �@��PanningMode$ VerticalFirst=�69   �� 5H       �@��IsFlicksEnabled .  67   �� 5I       � �� 5J      �� 5K      "	 ��6&   .R�5L      �� $
 border��6!   $ 
3 10 10 20��61   #��z��6K   #��z��6u   #��z��6�    . ._�5M      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5N       5O      P� 5P       � {� .  . �5Q   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5R      P� 5S       �@J�IsMouseOver . . �5T   "   �� $ border��6@   8   � ��6T   5U      P� 5V       �@J�IsKeyboardFocused . . �5W   "   �� $ border��6@   8   � ��6T   5X      5Z      5\       5]      ]� 5^       5_      �� 5`      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 5a       �@��IsSelectionActive .  6A   ./�5c      ��  �@��SelectionBrush# � /�67   5d      5f      �� 5g   
   $ 	#FF9AA6CA��69   �� 5h   
   $ 	#FF7EB4EA��6<   �� 5i   
   $ 	#FF569DE5��68   �� 5j   
   " G�6)   .�5k      ��  �@G�PasswordChar$	 ●��6-   �� 5l       � ��# � ��6+   �� 5m       � ��8   6,   �� 5n       � ��# � ��6+   �� 5o       � ��$ 1q�60   �� 5p       �@ TabNavigation$
 None=�6A   �� 5q       � ��$
 Left=�6;   �� 5r       �@�FocusVisualStyle 61   Z� �� 5s       �@J�	AllowDrop . 6*   �� 5t       �@��PanningMode$ VerticalFirst=�69   �� 5u       �@��IsFlicksEnabled .  67   �� 5v       � �� 5w      �� 5x      "	 G�6&   .R�5y      �� $
 border��6!   #��z��61   $ 
3 10 10 20��6[   #��z��6u   #��z��6�    . ._�5z      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5{       5|      P� 5}       � {� .  . �5~   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5      P� 5�       �@J�IsMouseOver . . �5�   "   �� $ border��6@   8   � ��6T   5�      P� 5�       �@J�IsKeyboardFocused . . �5�   "   �� $ border��6@   8   � ��6T   5�      5�      5�       5�      ]� 5�       5�      �� 5�      + �@G�#IsInactiveSelectionHighlightEnabled . 6S   �� 5�       �@G�IsSelectionActive .  6A   ./�5�      ��  �@G�SelectionBrush# � /�67   5�      5�      5�      .��5�      � ���	#FFF1F9FF � ColumnDefinitions 5�   
   �� 5�      �� 5�       � RowDefinitions 5�   
   �� 5�      �� 5�      $	��280 �6   �� 5�      .+�5�   
   �� $��2��6    �� TextAlignment$ Center=�6(   $��Center=�6?   $��	0 70 0 0 q�6\   $��30(�6o   $��Sitka Heading Semibold)�6}   $"Вхождение в никуда6�   � 5�   
   $��1��6   $��2��6   $	��180��60   $	��300��6=    5�      �� 5�      $��20 �6    �� 5�      �� 5�      $��40 �6    �� 5�      .+�5�      �� $��20��6   $��17(�6$   $	��Top=�62   $��Italic$�6J   $��Sitka Heading Semibold)�6]   
Логин6�   �� 5�      -   5        #���  5�      $��1��6=   $	��260��6J   $��30��6V   $��15(�6b    �� TextAlignment$
 Left=�6p   $��10 5 0 5q�6�   $	��Top=�6�   .��6�   
Тест6�   �� 5�      $��2��6   $��20��6%   $��17(�61   $��Bottom=�6?   $��Italic$�6Z   $��Sitka Heading Semibold)�6m   Пароль6�   G� 5�      #���  6   $��3��6E   $��30��6R   $	��260��6^   $��15(�6j   $	��Top=�6x   $
��Left=�6�   $��10 5 0 5q�6�   6�   5�      � 5�   
   $��2��6   $��2��6   $��80��60   $	��160��6<   .+�5�      �� -   5        #���  5�      $��Sitka Display)�6@   $��21(�6[   ���	#FF8BA3B3$��0 0 0 40q�6�   ��5�      �� 5�       �� EndPoint$ 0.5,1&�6*    �� 
StartPoint$ 0.5,0&�6;   .��5�      �  � Color$ 	#FFF3FBFF��6'    � Offset$ 0.393Q�69   � 5�      $ 	#FFDFF6FF��6'   $ 1Q�69   5�      .��5�   %   
вход5�      5�      5�      5�      