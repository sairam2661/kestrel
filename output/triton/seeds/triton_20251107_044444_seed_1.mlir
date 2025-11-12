"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "complex_ops"}> ({
  ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>):
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "tt.addptr"(%arg0, %0) <{offset = 1 : i32}> : (tensor<32x32xi32>, tensor<32xi32>) -> tensor<32x32xi32>
    %2 = "tt.expand_dims"(%1) <{axis = 1 : i32}> : (tensor<32x32xi32>) -> tensor<32x32x1xi32>
    %3 = "tt.expand_dims"(%arg1) <{axis = 1 : i32}> : (tensor<32x32xi32>) -> tensor<32x32x1xi32>
    %4 = "scf.if"(%arg0) <{sym_name = "if_region"}> ({
      ^bb1(%arg2: tensor<32x32xi32>):
        %0 = "scf.yield"(%arg2) : (tensor<32x32xi32>) -> tensor<32x32xi32>
    }) {
      succeed = () -> tensor<32x32xi32>  } : (tensor<32x32xi32>) -> tensor<32x32xi32>
    %5 = "tt.reduce"(%4) <{operation = "add", unit = 0 : i32}> : (tensor<32x32xi32>) -> i32
    %6 = "arith.subi"(%5, %0) <{overflowFlags = #arith_overflowFlagsAttr}>({}) : (i32, i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()