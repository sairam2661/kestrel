"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, i8, tensor<64xi32>) -> (!ttg_ptr, i8, tensor<64xi32>), sym_name = "process_data"}> ({
    ^bb0(%arg0: !ttg_ptr, %arg1: i8, %arg2: tensor<64xi32>):
      %0 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 512 : i32}> : () -> !ttg_ptr
      %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %2 = "arith.muli"(%arg1, %1) <{overflowFlags = #arith_overflowflags}> : (i8, i32) -> i32
      %3 = "arith.addi"(%2, %2) : (i32, i32) -> i32
      %4 = "tt.reduce"(%arg2) <{reductionOp = "sum"}> : (tensor<64xi32>) -> tensor<1xi32>
      %5 = "arith.cmpi"(%3, %4) <{predicate = "eq"}> : (i32, tensor<1xi32>) -> i1
      %6 = "scf.if"(%5) ({
        %7 = "arith.addi"(%2, %2) : (i32, i32) -> i32
        "tt.return"(%arg0, %7, %arg2) : (!ttg_ptr, i32, tensor<64xi32>) -> ()
      }, {
        "tt.return"(%arg0, %arg1, %arg2) : (!ttg_ptr, i8, tensor<64xi32>) -> ()
      }) : (i1) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "cuda:80"} : () -> ()