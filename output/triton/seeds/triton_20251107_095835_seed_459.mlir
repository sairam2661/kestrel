"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4x4xi8>, tensor<4x4xi8>) -> i32, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<4x4xi8>, %arg1: tensor<4x4xi8>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>
    %1 = "tt.reduce"() <{operation = "add"}> ({
      ^bb1(%arg2: tensor<4x4xi8>, %arg3: i32):
        %2 = "arith.addi"(%arg2, %arg3) : (tensor<4x4xi8>, i32) -> i32
        "scf.yield"(%2) : (i32)
    }) : (tensor<4x4xi8>, i32) -> i32
    "tt.return"(%1) : (i32) -> ()
  }) : (tensor<4x4xi8>, tensor<4x4xi8>) -> i32
}) {"ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()