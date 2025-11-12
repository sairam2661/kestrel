"builtin.module"() ({
  "util.func"() <{function_type = () -> (i32, i32), sym_name = "resolve_no_attributes", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
    %0:2 = "hal.allocator.resolve_memory_properties"() <{lifetime = 3 : i32}> : () -> (i32, i32)
    "util.return"(%0#0, %0#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

