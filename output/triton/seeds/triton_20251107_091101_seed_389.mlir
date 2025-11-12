"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_op_chain", sym_visibility = "public"}> ({
  ^bb0(%arg1: tensor<8xi32>, %arg2: tensor<8xi32>):
    %3 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 32 : i32}> : () -> !ttgPtr
    %4 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflow_none}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %5 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %6 = "arith.muli"(%4, %5) <{overflowFlags = #arith_overflow_none}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %7 = "arith.subi"(%6, %arg2) <{overflowFlags = #arith_overflow_none}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%7) : (tensor<8xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (), sym_name = "loop_with_condition", sym_visibility = "public"}> ({
  ^bb0(%arg3: i32):
    %8 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %9 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %10 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %11:2 = "scf.for"(%8, %arg3, %9, %8, %8) ({
    ^bb0(%arg4: i32, %arg5: i32):
      %12 = "arith.cmpi"(%arg5, %arg3) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %13 = "arith.addi"(%arg4, %10) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %14 = "arith.select"(%12, %13, %arg4) : (i1, i32, i32) -> i32
      "scf.yield"(%14, %arg5) : (i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32) -> (i32, i32)
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()