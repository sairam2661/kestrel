"builtin.module"() ({
  "spirv.func"() <{function_type = () -> (), sym_name = "main"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    "scf.for"(%1, %0, %1) ({
    ^bb1(%arg0: index):
      %2 = "arith.addi"(%arg0, %1) : (index, index) -> index
      %3 = "arith.muli"(%arg0, %2) : (index, index) -> index
      "scf.yield"(%3) : (index) -> index
    }) : (index, i32, index) -> (index)
    "spirv.ReturnValue"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()