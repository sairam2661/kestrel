"builtin.module"() ({
  "tt.func"() <{function_type = (!ttglobal_ptr, tensor<16xi32>, i32, i32) -> (), sym_name = "complex_gather"}> ({
  ^bb0(%arg0: !ttglobal_ptr, %arg1: tensor<16xi32>, %arg2: i32, %arg3: i32):
    %0 = "tt.expand_dims"(%arg1) <{axis = 1}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %1 = "arith.cmpi"(%arg2, %arg3) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%1) ({
      %2 = "tt.addptr"(%arg0, %arg3) <{overflowFlags = #arith_overflow_mode}>() : (!ttglobal_ptr, i32) -> !ttglobal_ptr
      %3 = "tt.reduce"(%0) <{operation = "add"}> ({
      ^bb0(%arg4: tensor<16x1xi32>, %arg5: tensor<16x1xi32>):
        %4 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith_overflow_mode}>() : (tensor<16x1xi32>, tensor<16x1xi32>) -> tensor<16x1xi32>
        "tt.reduce.return"(%4) : (tensor<16x1xi32>) -> ()
      }) : (tensor<16x1xi32>) -> tensor<1x1xi32>
      "tt.store"(%3, %2) <{overflowFlags = #arith_overflow_mode}>() : (tensor<1x1xi32>, !ttglobal_ptr) -> ()
      "scf.yield"() : () -> ()
    }, {
      "tt.store"(%0, %arg0) <{overflowFlags = #arith_overflow_mode}>() : (tensor<16x1xi32>, !ttglobal_ptr) -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32} : () -> ()