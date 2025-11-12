"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (tensor<32xi32>, !ttg_global_scratch_alloc) -> tensor<32xi32>, sym_name = "reduce_and_expand"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: !ttg_global_scratch_alloc):
    %0 = "tt.reduce"(%arg0) <{operation = "add", scratch = "%arg1", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    %1 = "tt.expand_dims"(%0, 1) <{axis = 1}> : (tensor<1xi32>) -> tensor<32xi32>
    "tt.return"(%1) : (tensor<32xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (!ttg_global_scratch_alloc, tensor<32xi32>) -> (), sym_name = "call_reduce_and_expand"}> ({
  ^bb0(%arg0: !ttg_global_scratch_alloc, %arg1: tensor<32xi32>):
    "tt.call"(%arg1, %arg0) <{callee = @reduce_and_expand}> : (tensor<32xi32>, !ttg_global_scratch_alloc) -> tensor<32xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
  ^bb1:
    %2 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_global_scratch_alloc
    "tt.call"(%2) <{callee = @call_reduce_and_expand}> : (!ttg_global_scratch_alloc) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "max", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "min", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "mul", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "add", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "sub", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "or", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "and", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "xor", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "smin", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "smax", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "umin", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "umax", reduction_dim = 0}> : (tensor<32xi32>) -> tensor<1xi32>
    "tt.return"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "fadd", reduction_dim = 0}> : (tensor<32xf32>) -> tensor<1xf32>
    "tt.return"(%1) : (tensor<1xf32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "fsub", reduction_dim = 0}> : (tensor<32xf32>) -> tensor<1xf32>
    "tt.return"(%1) : (tensor<1xf32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "fmul", reduction_dim = 0}> : (tensor<32xf32>) -> tensor<1xf32>
    "tt.return"(%1) : (tensor<1xf32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "fdiv", reduction_dim = 0}> : (tensor<32xf32>) -> tensor<1xf32>
    "tt.return"(%1) : (tensor<1xf32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "fmax", reduction_dim = 0}> : (tensor<32xf32>) -> tensor<1xf32>
    "tt.return"(%1) : (tensor<1xf32>) -> ()
  }) : () -> ()
  "tt.func"() ({
  ^bb0(%arg0: tensor<32xi32>):
    %1 = "tt.reduce"(%arg0) <{operation = "f