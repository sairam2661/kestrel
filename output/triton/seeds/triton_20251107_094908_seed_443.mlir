"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (i32, tensor<16xi32>) -> (i32, tensor<16xi32>), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_attrs}>: (i32, i32) -> i32
    %2 = "tt.addptr"(%arg1, %1) <{alignment = 4 : i32}> : (!ttptr, i32) -> !ttptr
    %3 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %4 = "tt.expand_dims"(%3) <{axis = 0 : i32}> : (tensor<32xi32>) -> tensor<1x32xi32>
    %5 = "arith.subi"(%4, %2) <{overflowFlags = #arith_overflow_attrs}> : (tensor<1x32xi32>, !ttptr) -> tensor<1x32xi32>
    "scf.if"(%1) ({
    ^bb1(%arg7: i32):
      %8 = "arith.cmpi"(%arg7, %arg0, "gt") : (i32, i32, i32) -> i1
      "scf.yield"(%8) : (i1) -> i1
    }) {
    }  : (i32) -> (i1)
    "tt.return"(%1, %5) : (i32, tensor<1x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()