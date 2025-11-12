"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "matrix_add"}> ({
    ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>):
      %0 = "ttg.global_scratch_alloc"() <{space = 0 : i32, size = 4096 : i32}> : () -> !ttg ptr
      .attrs
      %1: tensor<32x32xi32>  "ttg.load"(%0) <{align = 128 : i32}> : (!ttg) -> tensor<32x32xi32>
      %2: 128 = "arith.constant"() <{value = 128 : i32}> : () -> i32
      %3: 1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "arith.cmpi"(%4, %3) <{predicate = 4 : i64}> : (i32, i32) -> i1
      "scf.if"(%5) <{}> ({
        ^bb1(%ifCond: i1):
          %6 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
          %7 = "arith.muli"(%6, %6) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
          %8 = "tt.gather"(%1, %7) <{}>: (tensor<32x32xi32>, tensor<32xi32>) -> tensor<32xi32>
          %9 = "arith.addi"(%8, %8) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
          "tt.scatter"(%1, %7, %9) <{}>: (tensor<32x32xi32>, tensor<32xi32>, tensor<32xi32>) -> ()
          "scf.yield"() : () -> ()
      }) : () -> ()
      %10 = "tt.add"(%arg0, %arg1) <{}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      "ttg.store"(%10, %0) <{align = 128 : i32}> : (tensor<32x32xi32>, !ttg) -> ()
      "tt.return"(%10) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()