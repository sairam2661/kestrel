"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secrettensor, !secretindex) -> !secrettensor, sym_name = "fuzz_example"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secrettensor, %arg2: !secretindex):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c0_f32 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
    %tensor_empty = "tensor.empty"() : () -> tensor<10x10xf32>
    %0 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: !secretsecret, %arg4: !secrettensor, %arg5: !secretindex):
      %1:2 = "scf.for"(%c0_i32, %c0_i32, %c1_i32, %c0_f32, %c0_f32) ({
      ^bb0(%arg6: i32, %arg7: i32, %arg8: f32, %arg9: f32):
        %10 = "arith.cmpi"(%arg6, %arg7) <{predicate = 0 : i64}> : (i32, i32) -> i1
        %11:2 = "scf.if"(%10) ({
          %12 = "arith.addf"(%arg8, %arg9) <{fastmath = #arithfastmathnone}> : (f32, f32) -> f32
          "scf.yield"(%arg6, %12) : (i32, f32) -> ()
        }, {
          %13 = "arith.subf"(%arg8, %arg9) <{fastmath = #arithfastmathnone}> : (f32, f32) -> f32
          "scf.yield"(%arg7, %13) : (i32, f32) -> ()
        }) : (i1) -> (i32, f32)
        "scf.yield"(%11#0, %11#1) : (i32, f32) -> ()
      }) {lower = 0 : i64, upper = 10 : i64} : (i32, i32, i32, f32, f32) -> (i32, f32)
      "secret.yield"(%1#0, %1#1) : (i32, f32) -> ()
    }) : (!secretsecret, !secrettensor, !secretindex) -> (!secretsecret, i32, f32)
    "func.return"(%0#0, %0#1, %0#2) : (!secretsecret, i32, f32) -> ()
  }) : () -> ()
}) : () -> ()