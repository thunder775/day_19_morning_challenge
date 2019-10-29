import 'package:test/test.dart';
import 'main.dart';
 main(){
   test('replacing characters', (){
    expect(characterSwap('aabbcc','a','c'),'ccbbaa' ) ;
   });
 }