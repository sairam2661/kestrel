"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "complex_min_max"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 256 : index}> : () -> index
    %1 = "arith.constant"() <{value = 512 : index}> : () -> index
    %2 = "arith.min"(%arg0, %0) : (index, index) -> index
    %3 = "arith.max"(%arg1, %1) : (index, index) -> index
    %4 = "arith.addi"(%2, %3) : (index, index) -> index
    "func.return"(%4) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index) -> index, sym_name = "triple"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "arith.muli"(%arg0, %0) : (index, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> index, sym_name = "main"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 128 : index}> : () -> index
    %1 = "arith.constant"() <{value = 384 : index}> : () -> index
    %2 = "func.call"(%0, %1) <{callee = @complex_min_max}> : (index, index) -> index
    %3 = "func.call"(%2) <{callee = @triple}> : (index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()