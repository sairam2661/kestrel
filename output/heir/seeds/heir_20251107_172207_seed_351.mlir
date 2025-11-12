"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}], function_type = (i32, i32) -> (i32, i32), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.addf"(%1, 42.0) : (i32, f64) -> f64
    %3 = "arith.cmpi"("eq", %2, 0.0) : (f64, f64) -> i1
    "scf.if"(%3) ({
    ^bb0(%arg2: i32):
      %4 = "arith.muli"(%arg2, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> ()
    %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.select"(%3, %5, %0) : (i1, i32, i32) -> i32
    %7 = "tensor_ext.rotate"(%6) <{axis = 1}> : (i32) -> i32
    "func.return"(%6, %7) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()