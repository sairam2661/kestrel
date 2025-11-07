"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clock : i1, input reset : i1>, parameters = [], sym_name = "top"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    "sv.alwaysff"(%arg0) <{clockEdge = 0 : i32, resetStyle = 0 : i32}> ({
      %0 = "hw.constant"() <{value = -2147483647 : i32}> : () -> i32
      %1 = "hw.constant"() <{value = -2147483646 : i32}> : () -> i32
      "sv.fwrite"(%0) <{format_string = "stdout"}> : (i32) -> ()
      "sv.fwrite"(%1) <{format_string = "stderr once"}> : (i32) -> ()
      "sv.fwrite"(%1) <{format_string = "stderr twice"}> : (i32) -> ()
      %2 = "hw.constant"() <{value = -2147483646 : i32}> : () -> i32
      "sv.fwrite"(%2) <{format_string = "direct fd"}> : (i32) -> ()
    }, {
    }) : (i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

