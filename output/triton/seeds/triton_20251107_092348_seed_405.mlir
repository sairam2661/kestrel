"builtin.module"() ({
  "tt.func"() <{function_type = (index, !ttgglobal_scratch_alloc_id_type) -> (), sym_name = "test_unusual_flow"}> ({
  ^bb0(%arg0: index, %arg1: !ttgglobal_scratch_alloc_id_type):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%3) ({
      %4 = "tt.expand_dims"(%arg1) <{dim = 1}> : (!ttgglobal_scratch_alloc_id_type) -> tensor<1x!ttgglobal_scratch_alloc_id_type>
      "scf.for"(%0, %0, %1, %4) ({
      ^bb1(%arg2: i32, %arg3: tensor<1x!ttgglobal_scratch_alloc_id_type>):
        %5 = "tt.addptr"(%arg3, %arg2) <{alignment = 32 : i32}> : (tensor<1x!ttgglobal_scratch_alloc_id_type>, i32) -> !ttgglobal_scratch_alloc_id_type
        "tt.call"(%5) <{callee = "dummy_function", operands = []}> : (!ttgglobal_scratch_alloc_id_type) -> ()
        "scf.yield"(%arg3) : (tensor<1x!ttgglobal_scratch_alloc_id_type>) -> ()
      }) : (i32, i32, i32, tensor<1x!ttgglobal_scratch_alloc_id_type>) -> tensor<1x!ttgglobal_scratch_alloc_id_type>
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> i32, sym_name = "dummy_function"}> ({
    %6 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %7 = "arith.subi"(%6, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()