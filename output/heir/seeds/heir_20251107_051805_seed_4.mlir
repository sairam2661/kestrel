"builtin.module"() ({
  "func.func"() <{arg_attrs = [{foo.bar = #new_layout}], function_type = (tensor<16xi32>) -> !secret_secret, sym_name = "multi_dialect_interaction", sym_visibility = "private"}> ({
    %0 = "arith.constant"() <{value = dense<[[1, 2], [3, 4], [5, 6], [7, 8]]> : tensor<4x2xi32>}> : () -> tensor<4x2xi32>
    %1 = "secret.conceal"(%0) : (tensor<4x2xi32>) -> !secret_secret
    %2 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %3 = "arith.addi"(%iv, %iv) <{overflowFlags = #arith_overflow_flags}> : (index, index) -> index
      %4 = "arith.constant"() <{value = 1 : index}> : () -> index
      %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflow_flags}> : (index, index) -> index
      %6 = "secret.generic"(%1) ({
      ^bb1(%arg1: tensor<4x2xi32>):
        %7 = "tensor.extract"(%arg1, %3, %5) : (tensor<4x2xi32>, index, index) -> i32
        %8 = "arith.cmpi"(%7, %4) <{predicate = 5 : i64}> : (i32, i32) -> i1
        "secret.yield"(%8) : (i1) -> ()
      }) : (!secret_secret) -> !secret_secret
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%1) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()