"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested_complexity"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %1 = "arith.cmpi"(%arg0, %arg0) <{predicate = "ne"}> : (i32, i32) -> i1
    %2 = "arith.addf"(%0, %1) : (i1, i1) -> f32
    %3 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %4 = "arith.cmpf"(%2, %3) <{predicate = "eq"}> : (f32, f32) -> i1
    "scf.if"(%4) <{results = 1 : i32}> ({
    ^bb1:
      %5 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> i32
    }) {
    } : (i1) -> (i32)
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()