delete(instrfind);
dat = serial('COM7', 'BaudRate', 9600);
dat.InputBufferSize = 4096;

fopen(dat)
set(dat, 'ByteOrder', 'littleEndian')
i = 0;
disp 'Ok!';
while 1
fwrite(dat, 2, 'uint8')
number = fread(dat, [2,1], 'uint32')
pause(0.05);
clc;
end
fclose(dat);
