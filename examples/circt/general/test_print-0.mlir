"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input trigger : i1>, parameters = [], sym_name = "foo"}> ({
  ^bb0(%arg0: i1):
    "sv.always"(%arg0) <{events = [0 : i32]}> ({
      %0 = "hw.constant"() <{value = true}> : () -> i1
      %1 = "verif.format_verilog_string"(%0) <{formatString = "Hi %x\0A"}> : (i1) -> !hw.string
      "verif.print"(%1) : (!hw.string) -> ()
    }) : (i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

