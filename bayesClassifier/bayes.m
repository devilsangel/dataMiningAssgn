data=load('data.txt');
learn=data(1:80,:);
test=data(81:100,:);
[mu sigma]=estimateGaussian(learn(:,1:2));
learn1=learn((learn(:,3)==1),:);
learn0=learn((learn(:,3)==0),:);
[mu1 sigma1]=estimateGaussian(learn1(:,1:2));
[mu0 sigma0]=estimateGaussian(learn0(:,1:2));
p1=size(learn1,1)/size(learn,1);
p0=size(learn0,1)/size(learn,1);
pt1=multivariateGaussian(test(:,1:2),mu1,sigma1)*p1;
pt0=multivariateGaussian(test(:,1:2),mu0,sigma0)*p0;
px=multivariateGaussian(test(:,1:2),mu,sigma);
pt1=pt1./px;
pt0=pt0./px;
p=pt1>pt0
res=(p==(test(:,3)));
ans=sum(res)*100/size(res,1)