options(stringsAsFactors = FALSE)

tmp = read.csv(file.choose())

colnames(tmp)

#x[!x %in% boxplot.stats(x)$out]
tp = tmp$�u�@�ݹJ[which(tmp$�u�@�ݹJ>19000 & grepl('�x�_',tmp$�u�@�a�I))]
kao = tmp$�u�@�ݹJ[which(tmp$�u�@�ݹJ>19000 & grepl('����',tmp$�u�@�a�I))]
xing = tmp$�u�@�ݹJ[which(tmp$�u�@�ݹJ>19000 & grepl('�s��',tmp$�u�@�a�I))]

mean(tp[!tp %in% boxplot.stats(tp)$out])
mean(kao[!kao %in% boxplot.stats(kao)$out])
mean(xing[!xing %in% boxplot.stats(xing)$out])