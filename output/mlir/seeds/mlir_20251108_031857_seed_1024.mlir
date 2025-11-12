"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi8>, i32, f32) -> tensor<1xi8>, sym_name = "complex_flow_with_if"}> ({
  ^bb0(%arg0: tensor<1xi8>, %arg1: i32, %arg2: f32):
    %0 = "arith.cmpi"(%arg1, %arg1) <{"predicate" = "eq"}> : (i32, i32) -> i1
    "scf.if"(%0) ({
      ^bb1(%arg3: i1):
        %1 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
        %2 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
        %3 = "arith.addf"(%arg2, %2) : (f32, f32) -> f32
        "scf.yield"() : () -> ()
    }) : () -> ()
    %4 = "arith.cmpi"(%arg1, %arg1) <{"predicate" = "ne"}> : (i32, i32) -> i1
    "scf.if"(%4) ({
      ^bb2(%arg5: i1):
        %5 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
        %6 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
        %7 = "arith.addf"(%arg2, %6) : (f32, f32) -> f32
        "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg0) : (tensor<1xi8>) -> ()
  }) : () -> ()
}) : () -> ()