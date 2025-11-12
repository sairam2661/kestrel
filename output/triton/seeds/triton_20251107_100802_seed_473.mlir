"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "tensor_indexing_test"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %tensor = "arith.constant"() <{value = dense<[[0, 1, 2, 3], [4, 5, 6, 7], [8, 9, 10, 11], [12, 13, 14, 15]]> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    
    %index1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %index2 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    
    %select = "arith.select"(%index1, %index2, %c0_i32) : (i32, i32, i32) -> i32
    
    %value = "tt.load"(%tensor, %select, %select) : (tensor<4x4xi32>, i32, i32) -> i32
    
    "tt.return"(%value) : (i32) -> ()
  }) : () -> ()
}) : () -> ()