
list=dir('*.csv');
l=length(list);
p=zeros(1,l);
for i=1:l  
    filename=list(i).name;
    a=csvread(filename,44,1);
    fl=csvread(filename,7,1,[7 1 7 1]);
    fh=csvread(filename,8,1,[8 1 8 1]);
    bw=csvread(filename,11,1,[11 1 11 1]);
    df=fh-fl;
    b=10.^(a/10);
    p(i)=sum(b)/1001*df/bw;
end