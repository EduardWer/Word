   M S B A M L   `   `   `  ����C  ?gmglkodg, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:gmglkodggmglkodg  5   R   #clr-namespace:gmglkodggmglkodg  5   	       gmglkodg.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=5.0.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   &	viewmodelclr-namespace:gmglkodg  6R   "localclr-namespace:gmglkodg  5   	     � Title$  
MainWindow��5	      $	��450��6   $	��800��6,   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��669* �6   �� 5      $
��131* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��395* �6   �� 5      $	��27* �6   �� 5      $	��28* �6   �� 5      $
��Auto �6   .+�5   
   `� .�5      c� .@�5      �� $��ApplicationCommands.Cut��6   ��6;   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 
ContentCut=��� 5      $��ApplicationCommands.Copy��6   ��6<     $ ContentCopy=��� 5      $��ApplicationCommands.Paste��6   ��6=     $ ContentPaste=��� 5      �� 5       $��ApplicationCommands.Undo��6   ��6<     $
 Undo=��� 5!      $��ApplicationCommands.Redo��6   ��6<     $
 Redo=��� 5"      �� 5#      $ ��EditingCommands.ToggleBold��6   ��6>     $ 
FormatBold=��� 5$      $"��EditingCommands.ToggleItalic��6   ��6@     $ FormatItalic=��� 5%      $%��EditingCommands.ToggleUnderline��6   ��6C     $ FormatUnderline=��� 5&      �� 5'      $&�� EditingCommands.IncreaseFontSize��6   $��А🠕��6D   $��15(�6R   �� 5(      $&�� EditingCommands.DecreaseFontSize��6   $��А🠗��6D   $��15(�6R   �� 5)      �� 5*      $��EditingCommands.AlignLeft��6   ��6=     $ FormatAlignLeft=��� 5+      $!��EditingCommands.AlignCenter��6   ��6?     $ FormatAlignCenter=��� 5,      $ ��EditingCommands.AlignRight��6   ��6>     $ FormatAlignRight=��� 5-      $"��EditingCommands.AlignJustify��6   ��6@     $ FormatAlignJustify=��� 5.      �� 5/      $)��#EditingCommands.IncreaseIndentation��6   ��6G     $ FormatIndentIncrease=��� 50      $)��#EditingCommands.DecreaseIndentation��6   ��6G     $ FormatIndentDecrease=�51      52      �� 53   
   -   5         ��Name$ richText��53   )    �� 
AcceptsTab . $��1��54   
   $	��Top=�55   
   $��2��56   
    � 	Resources 58       �� 
TargetType �� Property	 �� Value��%X   'J�       �� 59      " J�6   .�5:      ��  �@��Margin$	 0q�6/   5;      5<      5=      �� 5?   
   -   5        $ docBox��5?   (    . $��3��68   $��2��6L   �� 5@   
   -   5        
 ��Name$
 Save_but��5@      $!��Сохранить файл��6#   $��2��6O   �� 5A   
   -   5        $
 Load_but��5A      $��3��6$   $��2��61   $��Открыть��6E   6W   �� 5B   
   -   5        $
 Send_but��5B      $��2��6#   $��2��63   $��Отправить��6@   6T   5C      5D      