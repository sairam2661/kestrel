"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 128 : i32}> : () -> memref<128xi32, #ttg_global_scratch_alloc>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %2 = "tt.reduce"(%1) <{operation = #tt_reduce_add}> ({
      ^bb1(%acc: i32, %val: i32):
        %3 = "arith.addi"(%acc, %val) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
    }) : (tensor<i32>) -> i32
    %4 = "tt.reduce"(%2) <{operation = #tt_reduce_mul}> ({
      ^bb2(%acc: i32, %val: i32):
        %5 = "arith.muli"(%acc, %val) : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()