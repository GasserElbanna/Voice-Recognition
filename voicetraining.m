recorder = audiorecorder(16000,8,1);
disp('Please Record your Voice')
drawnow();
pause(1);
recordblocking(recorder,5);
play(recorder);
data = getaudiodata(recorder);
plot(data)
figure;
f = VoiceFeatures(data);
f
user_no = input('Enter the user number:');
try
    
    
    F = [F;f];
    c = [c;user_no];
    save database
catch
    F = f;
    c = user_no;
    save database F c
end
    
msgbox('Yourvoice is registered')