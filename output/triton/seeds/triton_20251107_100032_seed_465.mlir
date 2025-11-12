"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi1>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "mixed_tensor_operations"}> ({
  ^bb0(%arg0: tensor<64xi1>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<64xi1>}> : () -> tensor<64xi1>
    %1 = "arith.select"(%arg0, %arg1, %0) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "scf.if"(%arg0) ({
      %3 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflow_mode}>: (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%3) : (tensor<64xi32>) -> ()
    }, {
      %4 = "arith.subi"(%arg1, %1) <{overflowFlags = #arith_overflow_mode}>: (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%4) : (tensor<64xi32>) -> ()
    }) : (tensor<64xi1>) -> tensor<64xi32>
    %5 = "tt.reduce"(%2) <{axis = 1 : i32}> ({
      ^bb0(%arg2: f32, %arg3: f32):
        %6 = "arith.addf"(%arg2, %arg3) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
        "tt.reduce.return"(%6) : (f32) -> ()
    }) : (tensor<64xi32>) -> tensor<64xf32>
    %7 = "ttg.global_scratch_alloc"() : () -> !ttgPtr
    %8 = "ttg.global_scratch_alloc"() : () -> !ttgPtr
    %9 = "ttg.global_scratch_alloc"() : () -> !ttgPtr
    %10 = "ttg.global_scratch_alloc"() : () -> !ttgPtr
    "tt.return"(%5) : (tensor<64xf32>) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>) -> tensor<64xi32>, sym_name = "nested_loops"}> ({
  ^bb0(%arg0: tensor<64xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    "scf.for"(%arg0, %0, %0) ({
      ^bb0(%arg1: tensor<64xi32>):
        "scf.for"(%arg1, %0, %0) ({
          ^bb0(%arg2: tensor<64xi32>):
            "scf.for"(%arg2, %0, %0) ({
              ^bb0(%arg3: tensor<64xi32>):
                "scf.yield"() : () -> ()
            }) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> ()
            "scf.yield"() : () -> ()
        }) : (tensor<64xi32>, tensor<64xi32>) -> ()
        "scf.yield"() : () -> ()
    }) : (tensor<64xi32>, tensor<64xi32>) -> ()
    "tt.return"(%arg0) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()