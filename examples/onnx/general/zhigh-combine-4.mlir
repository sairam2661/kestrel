"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "remove_nonetype_stick"}> ({
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "zhigh.Stick"(%0) : (none) -> none
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

