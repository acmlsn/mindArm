with Ada.Text_IO;
with devices; use  devices;

procedure main is

  ProgramName    : String := "MindArm";
  ProgramVersion : String := "1.0";

  function LoadHardwareLibs return integer;
  Pragma Import (C, LoadHardwareLibs, "loadDevices");

  loadResoult : integer;

begin

  Ada.Text_IO.Put_Line ("------------------------------------------------------------------");
  Ada.Text_IO.Put_Line (" ");
  Ada.Text_IO.Put_Line ("Application " & ProgramName & " V " & ProgramVersion & "loaded!!"  );
  Ada.Text_IO.Put_Line (" ");
  Ada.Text_IO.Put_Line ("------------------------------------------------------------------");

  loadResoult := LoadHardwareLibs;
  if loadResoult > 0 then
    deviceError(loadResoult);
  else
    Ada.Text_IO.Put_Line ("Devices started correctly!!");
  end if;

end main;
