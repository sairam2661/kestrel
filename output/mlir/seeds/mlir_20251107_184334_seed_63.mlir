"builtin.module"() ({
  "func.func"() <{function_type = (f32, i64) -> (f32, i64), sym_name = "nested_spirv_transform"}> ({
  ^bb0(%arg0: f32, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 1.5 : f32}> : () -> f32
    %1 = "arith.addf"(%arg0, %0) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%arg1, %0) <{predicate = 4 : i64}> : (i64, f32) -> i1
    %3 = "scf.if"(%2) ({
    ^bb0:
      %4 = "arith.cmpi"(%arg1, %1) <{predicate = 7 : i64}> : (i64, f32) -> i1
      %5 = "scf.yield"(%4) : (i1) -> ()
    }, {
    ^bb0:
      %4 = "arith.cmpi"(%arg1, %0) <{predicate = 1 : i64}> : (i64, f32) -> i1
      %5 = "scf.yield"(%4) : (i1) -> ()
    }) : (i1) -> (i1)
    "transform.yield"(%3) : (i1) -> ()
    "func.return"(%1, %arg1) : (f32, i64) -> ()
  }) : () -> ()
}) : () -> ()