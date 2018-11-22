@echo off
SETLOCAL
SET WORKDIR=%~dp0

IF NOT EXIST %WORKDIR%src\ (
  ECHO Downloading exercises...
  git clone https://github.com/thlorenz/learnuv.git %WORKDIR%learnuv
  cd %WORKDIR%learnuv
  git checkout 270d47b446724a4092d79472784693173c161bfd
  cd %WORKDIR%
  mv %WORKDIR%learnuv\src %WORKDIR%\src
  rm -rf %WORKDIR%learnuv
  ECHO Done. Exercises found in %WORKDIR%src
)

ENDLOCAL
