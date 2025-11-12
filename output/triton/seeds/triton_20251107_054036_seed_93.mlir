"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi32>, sym_name = "triton_advanced", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<16x32xi32>, %arg1: tensor<16x32xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 16 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 32 : index}> : () -> index
    %4 = "tt.expand_dims"(%arg0, %0) : (tensor<16x32xi32>, index) -> tensor<1x16x32xi32>
    %5 = "tt.expand_dims"(%arg1, %0) : (tensor<16x32xi32>, index) -> tensor<1x16x32xi32>
    %6 = "tt.reduce"(%4, %5, "add") <{operand_segment_sizes = [2 : i32], operation = "#tt.add"}> : (tensor<1x16x32xi32>, tensor<1x16x32xi32>) -> tensor<16x32xi32>
    %7 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi1>
    "scf.if"(%7) ({
      %8 = "scf.for"(%0, %1, %2, %6) ({
      ^bb0(%arg2: index, %arg3: tensor<16x32xi32>):
        %9 = "arith.subi"(%arg3, %4) <{overflowFlags = #arith_overflow_none}> : (tensor<16x32xi32>, tensor<1x16x32xi32>) -> tensor<16x32xi32>
        "scf.yield"(%9) : (tensor<16x32xi32>) -> ()
      }) : (index, index, index, tensor<16x32xi32>) -> tensor<16x32xi32>
      "tt.return"(%8) : (tensor<16x32xi32>) -> ()
    }, {
      "tt.return"(%6) : (tensor<16x32xi32>) -> ()
    }) : (tensor<16x32xi1>) -> ()
  }) : () -> ()
}) : () -> ()