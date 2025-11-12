"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tensor_ext.layout = #new_layout}], function_type = (!secretsecret, tensor<4xi32>) -> !secretsecret, res_attrs = [{tensor_ext.layout = #new_layout}], sym_name = "main"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: tensor<4xi32>):
    %0 = "arith.cmpi"(%arg1, %arg1) <{predicate = 0 : i64}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %1 = "arith.select"(%0, %arg1, %arg1) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "secret.conceal"(%1) : (tensor<4xi32>) -> !secretsecret
    %3 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %4 = "arith.index_cast"(%iv) <{type = i32}> : (index) -> i32
      %5 = "arith.addi"(%arg1, %4) : (tensor<4xi32>, i32) -> tensor<4xi32>
      %6 = "secret.generic"(%2, %5) ({
      ^bb2(%secret0: !secretsecret, %secret1: tensor<4xi32>):
        "secret.yield"(%secret0, %secret1) : (!secretsecret, tensor<4xi32>) -> ()
      }) {__argattrs = [{tensor_ext.layout = #new_layout}], __resattrs = [{tensor_ext.layout = #new_layout}]} : (!secretsecret, tensor<4xi32>) -> (!secretsecret, tensor<4xi32>)
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%2) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()