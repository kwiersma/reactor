I F   E X I S T S   ( S E L E C T   n a m e   F R O M   m a s t e r . d b o . s y s d a t a b a s e s   W H E R E   n a m e   =   N ' R e a c t o r B l o g ' )  
 	 D R O P   D A T A B A S E   [ R e a c t o r B l o g ]  
 G O  
  
 C R E A T E   D A T A B A S E   [ R e a c t o r B l o g ]  
 G O  
  
 u s e   [ R e a c t o r B l o g ]  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ F K _ E n t r y C a t e g o r y _ C a t e g o r y ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s F o r e i g n K e y ' )   =   1 )  
 A L T E R   T A B L E   [ d b o ] . [ E n t r y C a t e g o r y ]   D R O P   C O N S T R A I N T   F K _ E n t r y C a t e g o r y _ C a t e g o r y  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ F K _ C o m m e n t s _ E n t r y ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s F o r e i g n K e y ' )   =   1 )  
 A L T E R   T A B L E   [ d b o ] . [ C o m m e n t ]   D R O P   C O N S T R A I N T   F K _ C o m m e n t s _ E n t r y  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ F K _ E n t r y C a t e g o r y _ E n t r y ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s F o r e i g n K e y ' )   =   1 )  
 A L T E R   T A B L E   [ d b o ] . [ E n t r y C a t e g o r y ]   D R O P   C O N S T R A I N T   F K _ E n t r y C a t e g o r y _ E n t r y  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ F K _ R a t i n g _ E n t r y ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s F o r e i g n K e y ' )   =   1 )  
 A L T E R   T A B L E   [ d b o ] . [ R a t i n g ]   D R O P   C O N S T R A I N T   F K _ R a t i n g _ E n t r y  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ F K _ E n t r y _ U s e r ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s F o r e i g n K e y ' )   =   1 )  
 A L T E R   T A B L E   [ d b o ] . [ E n t r y ]   D R O P   C O N S T R A I N T   F K _ E n t r y _ U s e r  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ g e t A v e r a g e R a t i n g ] ' )   a n d   x t y p e   i n   ( N ' F N ' ,   N ' I F ' ,   N ' T F ' ) )  
 d r o p   f u n c t i o n   [ d b o ] . [ g e t A v e r a g e R a t i n g ]  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ C a t e g o r y ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s U s e r T a b l e ' )   =   1 )  
 d r o p   t a b l e   [ d b o ] . [ C a t e g o r y ]  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ C o m m e n t ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s U s e r T a b l e ' )   =   1 )  
 d r o p   t a b l e   [ d b o ] . [ C o m m e n t ]  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ E n t r y ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s U s e r T a b l e ' )   =   1 )  
 d r o p   t a b l e   [ d b o ] . [ E n t r y ]  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ E n t r y C a t e g o r y ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s U s e r T a b l e ' )   =   1 )  
 d r o p   t a b l e   [ d b o ] . [ E n t r y C a t e g o r y ]  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ R a t i n g ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s U s e r T a b l e ' )   =   1 )  
 d r o p   t a b l e   [ d b o ] . [ R a t i n g ]  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ S u b s c r i b e r ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s U s e r T a b l e ' )   =   1 )  
 d r o p   t a b l e   [ d b o ] . [ S u b s c r i b e r ]  
 G O  
  
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ U s e r ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s U s e r T a b l e ' )   =   1 )  
 d r o p   t a b l e   [ d b o ] . [ U s e r ]  
 G O  
  
 S E T   Q U O T E D _ I D E N T I F I E R   O N    
 G O  
 S E T   A N S I _ N U L L S   O N    
 G O  
  
 C R E A T E   F U N C T I O N   g e t A v e r a g e R a t i n g ( @ e n t r y I d   i n t )  
 R E T U R N S   i n t  
 B E G I N    
  
 	 D E C L A R E   @ r a t i n g   i n t  
 	  
 	 S E L E C T  
 	 	 @ r a t i n g   =   C A S E  
 	 	 	 W H E N   A V G ( r a t i n g )   I S   N U L L   T H E N   0  
 	 	 	 E L S E   R O U N D ( A V G ( C O N V E R T ( f l o a t ,   r a t i n g ) ) ,   0 )  
 	 	 E N D  
 	 F R O M   R a t i n g  
 	 W H E R E   e n t r y I d   =   @ e n t r y I d  
  
 	 R E T U R N   @ r a t i n g  
 E N D  
  
  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O F F    
 G O  
 S E T   A N S I _ N U L L S   O N    
 G O  
  
 C R E A T E   T A B L E   [ d b o ] . [ C a t e g o r y ]   (  
 	 [ c a t e g o r y I d ]   [ i n t ]   I D E N T I T Y   ( 1 ,   1 )   N O T   N U L L   ,  
 	 [ n a m e ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L    
 )   O N   [ P R I M A R Y ]  
 G O  
  
 C R E A T E   T A B L E   [ d b o ] . [ C o m m e n t ]   (  
 	 [ c o m m e n t I D ]   [ i n t ]   I D E N T I T Y   ( 1 ,   1 )   N O T   N U L L   ,  
 	 [ e n t r y I d ]   [ i n t ]   N O T   N U L L   ,  
 	 [ n a m e ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L   ,  
 	 [ e m a i l A d d r e s s ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L   ,  
 	 [ c o m m e n t ]   [ t e x t ]   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L   ,  
 	 [ p o s t e d ]   [ d a t e t i m e ]   N O T   N U L L    
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
  
 C R E A T E   T A B L E   [ d b o ] . [ E n t r y ]   (  
 	 [ e n t r y I d ]   [ i n t ]   I D E N T I T Y   ( 1 ,   1 )   N O T   N U L L   ,  
 	 [ t i t l e ]   [ v a r c h a r ]   ( 2 0 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L   ,  
 	 [ p r e v i e w ]   [ v a r c h a r ]   ( 1 0 0 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L   ,  
 	 [ a r t i c l e ]   [ t e x t ]   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L   ,  
 	 [ p u b l i c a t i o n D a t e ]   [ d a t e t i m e ]   N O T   N U L L   ,  
 	 [ p o s t e d B y U s e r I d ]   [ i n t ]   N O T   N U L L   ,  
 	 [ d i s a b l e C o m m e n t s ]   [ b i t ]   N O T   N U L L   ,  
 	 [ v i e w s ]   [ i n t ]   N O T   N U L L    
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
  
 C R E A T E   T A B L E   [ d b o ] . [ E n t r y C a t e g o r y ]   (  
 	 [ e n t r y C a t e g o r y I d ]   [ i n t ]   I D E N T I T Y   ( 1 ,   1 )   N O T   N U L L   ,  
 	 [ e n t r y I d ]   [ i n t ]   N O T   N U L L   ,  
 	 [ c a t e g o r y I d ]   [ i n t ]   N O T   N U L L    
 )   O N   [ P R I M A R Y ]  
 G O  
  
 C R E A T E   T A B L E   [ d b o ] . [ R a t i n g ]   (  
 	 [ r a t i n g I d ]   [ i n t ]   I D E N T I T Y   ( 1 ,   1 )   N O T   N U L L   ,  
 	 [ e n t r y I d ]   [ i n t ]   N O T   N U L L   ,  
 	 [ r a t i n g ]   [ i n t ]   N O T   N U L L    
 )   O N   [ P R I M A R Y ]  
 G O  
  
 C R E A T E   T A B L E   [ d b o ] . [ S u b s c r i b e r ]   (  
 	 [ s u b s c r i b e r I d ]   [ i n t ]   N O T   N U L L   ,  
 	 [ f u l l N a m e ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L    
 )   O N   [ P R I M A R Y ]  
 G O  
  
 C R E A T E   T A B L E   [ d b o ] . [ U s e r ]   (  
 	 [ u s e r I d ]   [ i n t ]   I D E N T I T Y   ( 1 ,   1 )   N O T   N U L L   ,  
 	 [ u s e r n a m e ]   [ v a r c h a r ]   ( 2 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L   ,  
 	 [ p a s s w o r d ]   [ v a r c h a r ]   ( 2 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L   ,  
 	 [ f i r s t N a m e ]   [ v a r c h a r ]   ( 2 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L   ,  
 	 [ l a s t N a m e ]   [ v a r c h a r ]   ( 2 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L   ,  
 	 [ e m a i l A d d r e s s ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L    
 )   O N   [ P R I M A R Y ]  
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ C a t e g o r y ]   W I T H   N O C H E C K   A D D    
 	 C O N S T R A I N T   [ P K _ C a t e g o r y ]   P R I M A R Y   K E Y     C L U S T E R E D    
 	 (  
 	 	 [ c a t e g o r y I d ]  
 	 )   W I T H     F I L L F A C T O R   =   9 0     O N   [ P R I M A R Y ]    
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ C o m m e n t ]   W I T H   N O C H E C K   A D D    
 	 C O N S T R A I N T   [ P K _ C o m m e n t s ]   P R I M A R Y   K E Y     C L U S T E R E D    
 	 (  
 	 	 [ c o m m e n t I D ]  
 	 )   W I T H     F I L L F A C T O R   =   9 0     O N   [ P R I M A R Y ]    
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ E n t r y ]   W I T H   N O C H E C K   A D D    
 	 C O N S T R A I N T   [ P K _ E n t r y ]   P R I M A R Y   K E Y     C L U S T E R E D    
 	 (  
 	 	 [ e n t r y I d ]  
 	 )   W I T H     F I L L F A C T O R   =   9 0     O N   [ P R I M A R Y ]    
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ E n t r y C a t e g o r y ]   W I T H   N O C H E C K   A D D    
 	 C O N S T R A I N T   [ P K _ E n t r y C a t e g o r y ]   P R I M A R Y   K E Y     C L U S T E R E D    
 	 (  
 	 	 [ e n t r y C a t e g o r y I d ]  
 	 )   W I T H     F I L L F A C T O R   =   9 0     O N   [ P R I M A R Y ]    
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ R a t i n g ]   W I T H   N O C H E C K   A D D    
 	 C O N S T R A I N T   [ P K _ R a t i n g ]   P R I M A R Y   K E Y     C L U S T E R E D    
 	 (  
 	 	 [ r a t i n g I d ]  
 	 )   W I T H     F I L L F A C T O R   =   9 0     O N   [ P R I M A R Y ]    
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ S u b s c r i b e r ]   W I T H   N O C H E C K   A D D    
 	 C O N S T R A I N T   [ P K _ S u b s c r i b e r s ]   P R I M A R Y   K E Y     C L U S T E R E D    
 	 (  
 	 	 [ s u b s c r i b e r I d ]  
 	 )   W I T H     F I L L F A C T O R   =   9 0     O N   [ P R I M A R Y ]    
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ U s e r ]   W I T H   N O C H E C K   A D D    
 	 C O N S T R A I N T   [ P K _ A u t h o r ]   P R I M A R Y   K E Y     C L U S T E R E D    
 	 (  
 	 	 [ u s e r I d ]  
 	 )   W I T H     F I L L F A C T O R   =   9 0     O N   [ P R I M A R Y ]    
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ C o m m e n t ]   A D D    
 	 C O N S T R A I N T   [ D F _ C o m m e n t s _ p o s t e d ]   D E F A U L T   ( g e t d a t e ( ) )   F O R   [ p o s t e d ]  
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ E n t r y ]   A D D    
 	 C O N S T R A I N T   [ D F _ E n t r y _ p u b l i c a t i o n D a t e ]   D E F A U L T   ( g e t d a t e ( ) )   F O R   [ p u b l i c a t i o n D a t e ] ,  
 	 C O N S T R A I N T   [ D F _ E n t r y _ d i s a b l e C o m m e n t s ]   D E F A U L T   ( 0 )   F O R   [ d i s a b l e C o m m e n t s ] ,  
 	 C O N S T R A I N T   [ D F _ E n t r y _ v i e w s ]   D E F A U L T   ( 0 )   F O R   [ v i e w s ]  
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ C o m m e n t ]   A D D    
 	 C O N S T R A I N T   [ F K _ C o m m e n t s _ E n t r y ]   F O R E I G N   K E Y    
 	 (  
 	 	 [ e n t r y I d ]  
 	 )   R E F E R E N C E S   [ d b o ] . [ E n t r y ]   (  
 	 	 [ e n t r y I d ]  
 	 )  
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ E n t r y ]   A D D    
 	 C O N S T R A I N T   [ F K _ E n t r y _ U s e r ]   F O R E I G N   K E Y    
 	 (  
 	 	 [ p o s t e d B y U s e r I d ]  
 	 )   R E F E R E N C E S   [ d b o ] . [ U s e r ]   (  
 	 	 [ u s e r I d ]  
 	 )  
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ E n t r y C a t e g o r y ]   A D D    
 	 C O N S T R A I N T   [ F K _ E n t r y C a t e g o r y _ C a t e g o r y ]   F O R E I G N   K E Y    
 	 (  
 	 	 [ c a t e g o r y I d ]  
 	 )   R E F E R E N C E S   [ d b o ] . [ C a t e g o r y ]   (  
 	 	 [ c a t e g o r y I d ]  
 	 ) ,  
 	 C O N S T R A I N T   [ F K _ E n t r y C a t e g o r y _ E n t r y ]   F O R E I G N   K E Y    
 	 (  
 	 	 [ e n t r y I d ]  
 	 )   R E F E R E N C E S   [ d b o ] . [ E n t r y ]   (  
 	 	 [ e n t r y I d ]  
 	 )  
 G O  
  
 A L T E R   T A B L E   [ d b o ] . [ R a t i n g ]   A D D    
 	 C O N S T R A I N T   [ F K _ R a t i n g _ E n t r y ]   F O R E I G N   K E Y    
 	 (  
 	 	 [ e n t r y I d ]  
 	 )   R E F E R E N C E S   [ d b o ] . [ E n t r y ]   (  
 	 	 [ e n t r y I d ]  
 	 )  
 G O  
  
 I N S E R T   I N T O   [ U s e r ]  
 (  
 	 [ u s e r N a m e ] ,  
 	 [ p a s s w o r d ] ,  
 	 [ f i r s t N a m e ] ,  
 	 [ l a s t N a m e ]  
 )  
 V A L U E S  
 (  
 	 ' a d m i n ' ,  
 	 ' a d m i n ' ,  
 	 ' A d m i n ' ,  
 	 ' U s e r '  
 ) 