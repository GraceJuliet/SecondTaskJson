   M S B A M L   `   `   `  ����F  BStoretojson, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:StoretojsonStoretojson  5   	       Storetojson.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Storetojson     5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)   ��5      �� 5   
    �� ImageSource$C =C:\Users\99002548\Desktop\C#\Storetojson\Views\Background.jpg��6   .��5       � .+�5$   
   �� $��Center=�6   $��Center=�62   
�������$	��585��6d   $	��390��6p   .+�5%      ��  �� Orientation$ 
Horizontal=�6   $��
40,40,20,3q�62   .+�5&      �� $��Section Sub Header��6   $��15(�65   $��DemiBold"�6C   $��Center=�6Y   $	��144��6t   �� 5'      $	��249��6i   $��36��6u   $��12q�6�   ��6   �� *SubheaderName1+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   5-      �� 53      $ 
Horizontal=�6   $��51��62   $	��527��6>   .+�54      �� $��   Title��6   $��10q�6+   $	��139��67   $��15(�6C   $��DemiBold"�6Q   $��Center=�6g   �� 55      $	��248��6_   $��8q�6k   ��6   �� *Title+$ TwoWay=�$ PropertyChanged=�6x   59      �� 5=      $ 
Horizontal=�6   $��51��62   $	��527��6>   .+�5>      �� $��  Format��6   $��10q�6+   $	��139��67   $��15(�6C   $��DemiBold"�6Q   $��Center=�6g   �� 5?      $	��248��6e   $��8q�6q    �� Text 6   �� *Format+$ TwoWay=�$ PropertyChanged=�.@�5@      �� $��RadioButton��6#   $��15(�69   6J   �� 5A      $��Checkbox��6#   $��15(�66   6G   �� 5B      $��String��6#   $��15(�64   6D   5C      5G      �� 5O      $ 
Horizontal=�6   $��51��62   $	��527��6>   .+�5P      �� $��   Name��6   $��10q�6*   $	��139��66   $��15(�6B   $��DemiBold"�6P   $��Center=�6f   �� 5Q      $	��248��6c   $��8q�6o   ��6   �� *	Mergename+$ TwoWay=�$ PropertyChanged=�6|   5U      �� 5Z      $ 
Horizontal=�6   $��51��62   $	��527��6>   .+�5[      �� $��	    Value��6   $��10q�6,   $	��139��68   $��15(�6D   $��DemiBold"�6R   $��Center=�6h   �� 5\      $	��248��6a   $��8q�6m    6   �� *Values+$ TwoWay=�$ PropertyChanged=�.@�5]      �� $
��True��6#   $��15(�62   6B   �� 5^      $��False��6#   $��15(�63   6C   5`      5d      �� 5i      $ 
Horizontal=�6   $��10q�62   $��Center=�6>   $	��305��6[   .+�5j      �� -   5        $��
Saverecord��5j      $��82��6�   $
��SAVE��6�   $��14(�6�   $��DemiBold"�6�   $��8q�6�   $��40��6�   ��6)   �� *cmd+��6A   ��  �� ElementName$ 
Saverecord�� �� Path$
 Name� � 	Resources 5k      	 �� 
TargetType
 �� Property �� Value��%_   '��       �� 5l      "	 ��6    .�5m      �� 
 �@��CornerRadius$ 20��6=   5n      5o      5p      �� 5q      -   5        $��	Addrecord��5q      $��94��6   $	��ADD��6�   $��14(�6�   $��DemiBold"�6�   $��8q�6�   $��40��6�   ��6'   �� *cmd+��6?   �� $ 	Addrecord��$
 Name� 5r      ��%_   '��       �� 5s      "	 ��6    .�5t      �� 
 �@��CornerRadius$ 20��6=   5u      5v      5w      �� 5x      -   5        $��Clear��5x      $��75��6y   $��CLEAR��6�   $��8q�6�   $��14(�6�   $��DemiBold"�6�   $��40��6�   ��6%   �� *cmd+��6=   �� $ Clear��$
 Name� 5y      ��%_   '��       �� 5z      "	 ��6    .�5{      �� 
 �@��CornerRadius$ 20��6=   5|      5}      5~      5�      5�      5�      5�      