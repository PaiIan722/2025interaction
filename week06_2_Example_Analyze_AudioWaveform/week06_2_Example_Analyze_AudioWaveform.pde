//week06_2_Example_Analyze_AudioWaveform
//他使用了Waveform的物件變數,來分析音樂
import processing.sound.*;

// Declare the sound source and Waveform analyzer variables
SoundFile sample;//宣告SoundFile物件變數
Waveform waveform;//宣告Waveform物件變數

// Define how many samples of the Waveform you want to be able to read at once
int samples = 100;//一次讀入多少sample:100個sample

public void setup() {
  size(640, 360);
  //background(255);

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "beat.aiff");//讀入音樂檔
  sample.loop();//循環播放 vs. 之前.play()只是播放一次

  // Create the Waveform analyzer and connect the playing soundfile to it.
  waveform = new Waveform(this, samples);//想用100格,來分析音樂
  waveform.input(sample);//用剛剛的音樂檔,進行分析
}

public void draw() {
  // Set background color, noFill and stroke style
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  // Perform the analysis
  waveform.analyze();//進行波型的分析
  
  beginShape();
  for(int i = 0; i < samples; i++){//把這100格的座標,都算出來
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width),//x座標,對應0...100的值,拉長到視窗的長度640
      map(waveform.data[i], -1, 1, 0, height)//y座標,就是waveform.data[i]的值
    );
  }
  endShape();
}
