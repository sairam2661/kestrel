"builtin.module"() ({
  "func.func"() <{arg_attrs = [{i16.MT}, {i16.MT}, {i16.MT}, {i16.MT}], function_type = (i16, i16, i16, i16) -> i16, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i16, %arg1: i16, %arg2: i16, %arg3: i16):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "slt"}> : (i16, i16) -> i1
    %1 = "arith.constant"() <{value = 1 : i1}> : () -> i1
    %2 = "arith.cmpi"(%arg2, %arg3) <{predicate = "sgt"}> : (i16, i16) -> i1
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
    %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
    %5 = "arith.select"(%0, %3, %1) : (i1, i16, i16) -> i16
    %6 = "arith.select"(%2, %4, %5) : (i1, i16, i16) -> i16
    "func.return"(%6) : (i16) -> ()
  }) : () -> ()
}) : () -> ()