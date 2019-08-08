Track = audiorecorder( 22050,8,2);
disp('Record Now');
drawnow();
pause(1);
recordblocking(Track,5);
data=getaudiodata(Track);
play(Track);
pitch= GetFeatures(data);
disp(pitch);
UserNo = input('Enter User Number ');
try
    load database
    F= [F; pitch];
    C= [C; UserNo];  
    save database
catch
    F = pitch;
    C= UserNo;
    save database F C
end
msgbox('Voice Registered');


