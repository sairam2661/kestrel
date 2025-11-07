"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>, sym_name = "test_maxpool_2d_same_upper_dyn"}> ({
  ^bb0(%arg0: tensor<?x?x?x?xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "SAME_UPPER", ceil_mode = 0 : si64, kernel_shape = [2, 2], storage_order = 0 : si64} : (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    "func.return"(%0) : (tensor<?x?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

