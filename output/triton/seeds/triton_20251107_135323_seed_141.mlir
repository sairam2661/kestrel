"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (), sym_name = "complex_reduce_and_select"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "tt.reduce"(%arg0) <{operation = "add", shape = [1]}> : (tensor<32xi32>) -> tensor<1xi32>
    %1 = "tt.reduce"(%arg1) <{operation = "max", shape = [1]}> : (tensor<32xi32>) -> tensor<1xi32>
    %2 = "arith.cmpi"(%0, %1) <{predicate = 1 : i64}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi1>
    %3 = "scf.if"(%2) ({
      "tt.return"() : () -> ()
    }, {
      %4 = "tt.addptr"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %5 = "tt.expand_dims"(%4) <{dim = 0}> : (tensor<32xi32>) -> tensor<1x32xi32>
      "tt.return"() : () -> ()
    }) : (i1) -> ()
  }) : () -> ()
}) : () -> ()