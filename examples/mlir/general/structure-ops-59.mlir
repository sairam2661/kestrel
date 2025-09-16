"builtin.module"() ({
  "spirv.SpecConstant"() <{default_value = 5 : i32, sym_name = "sc"}> : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "reference_of"}> ({
    %0 = "spirv.mlir.referenceof"() <{spec_const = @sc}> : () -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

