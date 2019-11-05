import 'package:test/test.dart';
import 'main.dart';
 main(){
   test('digit length', (){
    expect( digitLength([9,33, 44, 1, 22]),
        [22, 33, 44, 1, 9]) ;
   });
   test('replacing characters', (){
     expect(characterSwap('aabbcc','a','c'),'ccbbaa' ) ;
   });
   test('valid IP', (){
     expect(isValidIP("123.045.06.70"),true ) ;
   });
 }