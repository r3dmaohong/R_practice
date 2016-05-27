library(plyr)

options(stringsAsFactors=F)
people <- read.csv(file.choose())

trim = function(x){
  gsub("^[[:punct:]]+|[[:punct:]]+$", "", x)
}


ddply(people, c('�ʧO','Q1'), nrow)
ddply(people, c('�ʧO','Q2'), nrow)

##���D������
##�令 �Q�n�Ѫ��D��col name, �����ܶ��W�� , �ܹ��sԣ
multi_q = function(iname,varname){
  i = which(colnames(people)==iname)
  varx = which(colnames(people)==varname)
  levels = unique(people[,varx])
  levels = levels[which(levels!='')]
  for(var in 1:length(levels)){
    if(var==1){
      df = cbind(as.data.frame(table(unlist(strsplit(people[,i],', ')[which(people[,varx]==levels[var])]))),levels[var])
      colnames(df) = c('�ﶵ','Freq',varname)
    }else{
      df_tmp = cbind(as.data.frame(table(unlist(strsplit(people[,i],', ')[which(people[,varx]==levels[var])]))),levels[var])
      colnames(df_tmp) = c('�ﶵ','Freq',varname)
      df = rbind(df,df_tmp)
    }
  }
  return(df)
}