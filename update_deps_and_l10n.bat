 batch
  @echo off
  echo Running flutter pub get...
  call flutter pub get
  if errorlevel 1 goto end

  echo Running flutter gen-l10n...
  call flutter gen-l10n
  if errorlevel 1 goto end

  echo Done!
  :end