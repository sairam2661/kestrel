"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, i32, i32) -> tensor<16x16xi32>, sym_name = "tensor_loop_with_select"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 16 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %5:2 = "scf.for"(%0, %1, %2, %arg0, %arg1, %arg2, %arg0) ({
    ^bb0(%arg3: index, %arg4: index, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: tensor<16x16xi32>):
      %9 = "arith.cmpi"(%arg6, %arg7) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %10 = "arith.select"(%9, %arg8, %arg5) : (i1, tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      "scf.yield"(%arg3, %arg4, %arg5, %arg6, %arg7, %10) : (index, index, i32, i32, i32, tensor<16x16xi32>) -> ()
    }) : (index, index, index, index, index, tensor<16x16xi32>) -> (tensor<16x16xi32>)
    "tt.return"(%5#5) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()



