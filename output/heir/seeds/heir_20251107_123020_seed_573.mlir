"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, !tensor_ext_tensor) -> !secret_secret, sym_name = "complex_op_interaction"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !tensor_ext_tensor):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i32):
      %1 = "tensor.extract"(%arg1, %arg2) : (!tensor_ext_tensor, i32) -> i32
      %2 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %3 = "arith.select"(%1, %2, 0) : (i32, i32, i32) -> i32
      %4 = "arith.mulf"(%3, %1) : (i32, i32) -> f32
      "secret.yield"(%4) : (f32) -> ()
    }) : (!secret_secret) -> !secret_secret
    "func.return"(%0) : (!secret_secret) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret_secret) -> !secret_secret, sym_name = "nested_control_flow"}> ({
  ^bb0(%arg0: !secret_secret):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i32):
      %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %3 = "scf.for"(%2, %arg1, %2, %2) ({
      ^bb0(%arg2: i32, %arg3: i32):
        %4 = "arith.cmpi"(%arg2, %arg3) <{predicate = 4 : i64}> : (i32, i32) -> i1
        %5 = "scf.if"(%4) ({
          %6 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
          "scf.yield"(%6) : (i32) -> ()
        }, {
          %7 = "arith.subi"(%arg2, %arg3) : (i32, i32) -> i32
          "scf.yield"(%7) : (i32) -> ()
        }) : (i1) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }) {lower = 0 : i64, upper = 10 : i64} : (i32, i32, i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secret_secret) -> !secret_secret
    "func.return"(%0) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()