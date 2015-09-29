import 'dart:html';
import 'dart:math' as math;
void main() {
  querySelector('#sample_text_id')
    ..text = '2+3='
    ..onClick.listen(add);
}

void reverseText(MouseEvent event) {
  var text = querySelector('#sample_text_id').text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector('#sample_text_id').text = buffer.toString();
}
void randomSelectStu(MouseEvent event){
  var stuMap={
    0:10130340101,
    1:10130340102};
  var random = new math.Random();
  var randomID=random.nextInt(2);
  var stuID=stuMap[randomID];
querySelector('#sample_text_id').text = stuID.toString();

}


void add(MouseEvent event) {
  int a=2;
  int b=3;
  int c=a+b;
querySelector('#sample_text_id').text = c.toString();
}


void printNumber(num number) {
  print('The number is $number.');
}


