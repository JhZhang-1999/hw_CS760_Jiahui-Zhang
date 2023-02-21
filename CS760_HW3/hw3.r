conf <- c(.1,.2,.3,.4,.45,.55,.7,.8,.85,.95)
thres <- c(0,conf,1)
true <- c(0,0,1,1,0,1,1,0,1,1)
tp <- c()
fp <- c()

for (H in thres){
  pred <- as.numeric(conf >= H)
  true.pos <- sum(pred==true & pred==1) / sum(true==1)
  fals.pos <- sum(pred!=true & pred==1) / sum(true==0)
  tp <- c(tp,true.pos)
  fp <- c(fp,fals.pos)
}
plot(fp,tp,type='l',ylim=c(0,1),main='ROC',xlab='False Positive Rate',ylab='True Positive Rate')
