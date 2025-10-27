//week08_4_2048_part4
color []c={#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#EF7F63,#EF7F63,#F76543};
color []c2={#778E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5,#FDF8F5};
int []N={0,2,4,8,16,32,64};
int [][] B = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
void keyPressed(){
  if(keyCode==RIGHT){
   for(int i=0;i<4;i++){
    int now=3;
    for(int j=3;j>=0;j--){
     if(B[i][j]>0){
      B[i][now]=B[i][j];
      now--;
     }
    }
    for(int j=now;j>=0;j--){
     B[i][j]=0; 
    }
   }
  }
  genTwo(); 
}
void genTwo(){
 int zero=0;
 for(int i=0;i<4;i++){
  for(int j=0;j<4;j++){
   if(B[i][j]==0)zero++; 
  }
 }
 int ans = int(random(zero));
 for(int i=0;i<4;i++){
  for(int j=0;j<4;j++){
   if(B[i][j]==0){
    if(ans==0){
     B[i][j]=1;
     return;
    }else ans--;
   }
  }
 }
}
void setup(){
 size(410,410); 
}
void draw(){
  background(188,174,162);
 for(int i=0;i<4;i++){
   for(int j=0;j<4;j++){
     int id=B[i][j];
    fill(c[id]);//fill(206,194,185);
    noStroke();
    rect(j*100+10,i*100+10,90,90,3);
    fill(c2[id]);
    textAlign(CENTER,CENTER);
    textSize(60);
    text(N[id],j*100+55,i*100+55);
   }
 }
}
