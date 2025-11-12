"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "scratch_alloc_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> memref<4096xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1024 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "scf.for"(%1, %2, %3) ({
    ^bb0(%i: index):
      %5 = "arith.addi"(%i, %1) <{overflowFlags = #arith_overflownone}> : (index, index) -> index
      "tt.store"(%5, %0) <{indices = [0]}> : (index, memref<4096xi32>) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()