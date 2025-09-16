"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>, tensor<i1>, tensor<i1>) -> tensor<f32>, sym_name = "test_cond_if_max_nested_depth"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: tensor<i1>, %arg3: tensor<i1>):
    %0 = "tosa.cond_if"(%arg2) ({
      %2 = "tosa.cond_if"(%arg3) ({
        %3 = "tosa.cond_if"(%arg2) ({
          %4 = "tosa.cond_if"(%arg3) ({
            %5 = "tosa.cond_if"(%arg2) ({
              %6 = "tosa.cond_if"(%arg3) ({
                %7 = "tosa.sub"(%arg0, %arg1) : (tensor<f32>, tensor<f32>) -> tensor<f32>
                "tosa.yield"(%7) : (tensor<f32>) -> ()
              }, {
                "tosa.yield"(%arg0) : (tensor<f32>) -> ()
              }) : (tensor<i1>) -> tensor<f32>
              "tosa.yield"(%6) : (tensor<f32>) -> ()
            }, {
              "tosa.yield"(%arg0) : (tensor<f32>) -> ()
            }) : (tensor<i1>) -> tensor<f32>
            "tosa.yield"(%5) : (tensor<f32>) -> ()
          }, {
            "tosa.yield"(%arg0) : (tensor<f32>) -> ()
          }) : (tensor<i1>) -> tensor<f32>
          "tosa.yield"(%4) : (tensor<f32>) -> ()
        }, {
          "tosa.yield"(%arg0) : (tensor<f32>) -> ()
        }) : (tensor<i1>) -> tensor<f32>
        "tosa.yield"(%3) : (tensor<f32>) -> ()
      }, {
        "tosa.yield"(%arg0) : (tensor<f32>) -> ()
      }) : (tensor<i1>) -> tensor<f32>
      "tosa.yield"(%2) : (tensor<f32>) -> ()
    }, {
      %1 = "tosa.sub"(%arg0, %arg1) : (tensor<f32>, tensor<f32>) -> tensor<f32>
      "tosa.yield"(%1) : (tensor<f32>) -> ()
    }) : (tensor<i1>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

