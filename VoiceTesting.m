% recorder = audiorecorder(16000,8,2);
% disp('Please Record your Voice')
% drawnow();
% pause(1);
% recordblocking(recorder,5);
% play(recorder);

data = getaudiodata(recorder);
plot(data)
figure;
f = VoiceFeatures(data);
load database;

D = [];
for(i=1:size(F,1))
    d=sum(abs(F(i)-f));
    D = [D d];
end

sm = inf;
ind = -1;
for(i=1:length(D))
    if(D(i)<sm)
        sm = D(i);
        ind = i;
    end
end
detected_class = c(ind);
disp('The detected class is: ');
detected_class
