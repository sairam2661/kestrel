"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "mixed_dialect_complexity"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "tosa.const"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "scf.for"(%arg0, %2, %1) ({
    ^bb0(%arg2: index):
      %4 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflow_attrs}> : (index, index) -> index
      "scf.yield"(%4) : (index) -> ()
    }) : (index) -> (index)
    %5 = "func.call"() <{callee = @nested_func}> : () -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> index, sym_name = "nested_func"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()