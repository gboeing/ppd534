CALL cd %~dp0
CALL git pull
CALL docker pull gboeing/ppd534:latest
CALL cmd /k docker run --rm -it -p 8888:8888 -v "%cd%":/home/jovyan/work gboeing/ppd534:latest