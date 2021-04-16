@echo on
@setlocal
@set this=%~dp0
@set name=AddOnStudio

@FOR %%X IN ("%this%*%name%.exe") DO @CALL :RESET "%%X"
@GOTO :EOF

:RESET
@set file=%~n1
@set app=%this%%file%.exe

@echo Resetting %file%

@pushd %this%

"%app%" /Setup /ResetSkipPkgs
"%app%" /ResetUserData

@popd
@goto :EOF