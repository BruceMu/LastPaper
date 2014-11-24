x=linspace(0,0.1,1000);
y=gaussmf(x,[10 500]);
rect=zeros(size(x));
for i=1:length(rect)
    if x(i)>300 && x(i)<700
        rect(i)=0.004;
    end
end
filter=conv(y,rect,'same');
plot(x,filter);
hold on;
x1=linspace(0,10.1000);
z=gaussmf(x1,[90 500]);
for i=1:length(z)
    z(i)=z(i)+abs(randn(1)/10);
end
stem(x1,z,'LineStyle','-.','MarkerFaceColor','red','MarkerEdgeColor','green');

