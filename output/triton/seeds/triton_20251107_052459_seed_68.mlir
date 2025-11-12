"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "custom_op_kernel"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %1 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
    %2 = "tt.expand_dims"(%1) <{axis = 1}> : (tensor<256xi32>) -> tensor<256x1xi32>
    %3 = "arith.subi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "tt.reduce"() <{operation = "add", reduction_dimension = 1}> ({
      ^bb1(%arg2: tensor<256x1xi32>, %arg3: tensor<256xi32>, %arg4: i32, %arg5: i32):
        %6 = "arith.addi"(%arg2, %arg3) : (tensor<256x1xi32>, tensor<256xi32>) -> tensor<256x1xi32>
        "scf.yield"(%6) : (tensor<256x1xi32>) -> ()
    }) : (tensor<256x1xi32>, tensor<256xi32>) -> tensor<256x1xi32>
    %7 = "scf.if"(%3) <{result = 1 : i1}> ({
    ^bb2:
      %8 = "tt.make_range"() <{end = 512 : i32, start = 256 : i32}> : () -> tensor<256xi32>
      %9 = "tt.addptr"(%arg0, %8) : (!ttPtrType, tensor<256xi32>) -> !ttPtrType
      "scf.yield"(%9) : (!ttPtrType) -> ()
    }) {
    } : (tensor<128xi32>) -> (!ttPtrType)
    "tt.return"(%4) : (tensor<256x1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 16 : i32} : () -> ()