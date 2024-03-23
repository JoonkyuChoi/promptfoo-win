REM ----------------------------------------------------------------------------
REM .clean-deps.bat
REM ----------------------------------------------------------------------------
REM delete root folders
REM ------------------------------------
RMDIR /Q/S ".\dist"
RMDIR /Q/S ".\node_modules"
REM ------------------------------------
REM delete nextui folders/files
REM ------------------------------------
RMDIR /Q/S ".\src\web\nextui\.next"
RMDIR /Q/S ".\src\web\nextui\node_modules"

DEL /Q /F  ".\src\web\nextui\next-env.d.ts"
REM ------------------------------------
REM recovery package-lock.json files
REM ------------------------------------
COPY /L/Y .\package-lock-org.json                 .\package-lock.json
COPY /L/Y .\src\web\nextui\package-lock-org.json  .\src\web\nextui\package-lock.json
REM ----------------------------------------------------------------------------
