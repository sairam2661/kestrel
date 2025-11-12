"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "complex_dot"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>, %arg2: tensor<8x8xi32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_ptr
    %1 = "tt.dot"(%arg0, %arg1, %arg2) <{inputPrecision = 1 : i32, maxNumImpreciseAcc = 0 : i32}> : (tensor<8x8xi32>, tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttg_ptr
    %3 = "tt.dot"(%arg0, %arg1, %arg2) <{inputPrecision = 1 : i32, maxNumImpreciseAcc = 0 : i32}> : (tensor<8x8xi32>, tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %4 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttg_ptr
    %5 = "tt.dot"(%arg0, %arg1, %arg2) <{inputPrecision = 1 : i32, maxNumImpreciseAcc = 0 : i32}> : (tensor<8x8xi32>, tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %6 = "ttg.global_scratch_alloc"() <{size = 8192 : i32}> : () -> !ttg_ptr
    "tt.return"(%1) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ( )