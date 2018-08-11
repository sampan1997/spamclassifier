f_contents=readFile('s.txt');
wordindices=[];
load('thetasvmforspam.mat');
load('vocablists.mat');
wordindices=processEmail(f_contents);
X=zeros(size(vocabList,1));
X=emailFeatures(wordindices);
p=svmPredict(model,X);
if(p)
printf("email is spam")
end
if(!p)
printf('email not spam');
end